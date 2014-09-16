######################################################################################################
# serviceabilitytools.pl
# Service Control and Activation for Cisco Communications Manager and Instant Messaging and Presence
# Author: Patrick Nowicki - patrick.nowicki@cdw.com
# Version: 1.0
# Date: 9/1/2014
# 
######################################################################################################
use Data::Dumper;
use XML::Simple;
use Text::CSV;
use File::Slurp;
use MIME::Base64;
use Crypt::CBCeasy;
use Storable qw(dclone);

# Support info
my $supporturl="See https://discdungeon.cdw.com/vvtwiki/index.php/Serviceabilitytools for more info.\n";
my $validtools="activateservice\ncontrolservice\nclusterserviceinfo\nclusterservicerestart\nclustertftprestart";
my $supportedversions = "(9.1,10.0,10.5)";
my $servinterface;
my $risinterface;


# Open and read config file
open (CONFIG,"serviceabilitytools.cfg") or die "No config file found.\n\n$supporturl";
while (<CONFIG>) {
    chomp;                  # no newline
    s/#.*//;                # no comments
    s/^\s+//;               # no leading white
    s/\s+$//;               # no trailing white
    next unless length;     # anything left?
    my ($var, $value) = split(/\s*=\s*/, $_, 2);
	$$var = $value;
}
if ($user eq "" || $password eq "" || $version eq "" || $primaryserver eq "") { die "Required fields not in config file\n\n$supporturl";}
close (CONFIG);

my $config = read_file("serviceabilitytools.cfg");
$config=~m/assword=(.*)\n/;
$rawpassword=$1;
if ($rawpassword=~/ENCR:(.*)/) {
	#password already encrypted
	$password=decryptpwd($1);
} else {
	#encrypt password and rewrite config file
	$password=$rawpassword;
	$encryptedpwd=encryptpwd($rawpassword);
	chomp $encryptedpwd;
	$config=~s/assword=$rawpassword/assword=ENCR:$encryptedpwd/;
	open (CONFIG,">serviceabilitytools.cfg") or die "Can't write to config file\n";
	print CONFIG $config;
	close (CONFIG);
}


## Set up logging
if ($debug eq "") {$debug='0';}
use Log::Log4perl qw(:easy);
Log::Log4perl->easy_init( 
	{ level   => $debug,
	  file    => ">>serviceabilitytools.log" } );
	 
# Override and set credentials
BEGIN{
sub SOAP::Transport::HTTP::Client::get_basic_credentials {
    return ($user => $password)
}
}

if ($version eq '10.0') {
	use CiscoUC::Serviceability::10_0::Interfaces::ControlCenterServices::ControlCenterServicesPort;
	$servinterface = CiscoUC::Serviceability::10_0::Interfaces::ControlCenterServices::ControlCenterServicesPort->new();
	use CiscoUC::RIS::10_0::Interfaces::RISService::RisPort;
	$risinterface = CiscoUC::RIS::10_0::Interfaces::RISService::RisPort->new();
} elsif ($version eq '10.5') {
	use CiscoUC::Serviceability::10_5::Interfaces::ControlCenterServices::ControlCenterServicesPort;
	$servinterface = CiscoUC::Serviceability::10_5::Interfaces::ControlCenterServices::ControlCenterServicesPort->new();
	use CiscoUC::RIS::10_5::Interfaces::RISService::RisPort;
	$risinterface = CiscoUC::RIS::10_5::Interfaces::RISService::RisPort->new();
} elsif ($version eq '9.1') {
	use CiscoUC::Serviceability::9_1::Interfaces::ControlCenterServices::ControlCenterServicesPort;
	$servinterface = CiscoUC::Serviceability::9_1::Interfaces::ControlCenterServices::ControlCenterServicesPort->new();
	use CiscoUC::RIS::9_1::Interfaces::RISService::RisPort;
	$risinterface = CiscoUC::RIS::9_1::Interfaces::RISService::RisPort->new();
} else {
	die "Tool does not yet support version $version. Please use a supported version. $supportedversions\n\n$supporturl";
}



###########
# Analyse command line args
if ($ARGV[0] eq 'activateservice') {
	my %returninfo;
	open my $fh, "<", $ARGV[1] or die "$ARGV[1]: $!";
	my $csv = Text::CSV->new ({ binary => 1, auto_diag => 1, sep_char => "\t" });
	$csv->column_names ($csv->getline ($fh));
	while ( not $csv->eof ) {
		my $row = $csv->getline_hr($fh);
		if ($row->{Service} ne '') {
					%returninfo=&deployservice($servinterface,$row->{Server},$row->{Deploy},$row->{Service});
					$field1="Node:$row->{Server}";
					$field2="Service:$row->{Service}";
					$field3="Service Status:$returninfo{status}";
					$field4="$row->{Deploy} Result:$returninfo{success}";
					$final=sprintf "%-12s %-50s %-25s %-s\n", $field1, $field2, $field3, $field4;
					print $final;
					chomp $final;
					DEBUG($final . "\t" . $returninfo{successreason})
		}
	}
	close $fh;
} elsif ($ARGV[0] eq 'controlservice') {
	my %returninfo;
	open my $fh, "<", $ARGV[1] or die "$ARGV[1]: $!";
	my $csv = Text::CSV->new ({ binary => 1, auto_diag => 1, sep_char => "\t" });
	$csv->column_names ($csv->getline ($fh));
	while ( not $csv->eof ) {
		my $row = $csv->getline_hr($fh);
		if ($row->{Service} ne '') {
			%returninfo=&controlservice($servinterface,$row->{Server},$row->{Action},$row->{Service});
			$field1="Node:$row->{Server}";
			$field2="Service:$row->{Service}";
			$field3="Service Status:$returninfo{status}";
			$field4="$row->{Action} Result:$returninfo{success}";
			$final=sprintf "%-12s %-50s %-25s %-s\n", $field1, $field2, $field3, $field4;
			print $final;
			chomp $final;
			DEBUG($final . "\t" . $returninfo{successreason})
			#print "Node:$row->{Server}\tService:$row->{Service}\tService Status:$returninfo{status}\t$row->{Action} Result:$returninfo{success}";
			#if ($returninfo{success} eq "Failed") {print "\tReason:$returninfo{successreason}";}
			#print "\n";
		}
	}
	close $fh;
} elsif ($ARGV[0] eq 'statusservice') {
	my %returninfo;
	open my $fh, "<", $ARGV[1] or die "$ARGV[1]: $!";
	my $csv = Text::CSV->new ({ binary => 1, auto_diag => 1, sep_char => "\t" });
	$csv->column_names ($csv->getline ($fh));
	while ( not $csv->eof ) {
		my $row = $csv->getline_hr($fh);
		if ($row->{Service} ne '') {
			%returninfo=&statusservice($servinterface,$row->{Server},$row->{Service});
			print "Node:$row->{Server}\tService:$row->{Service}\tService Status:$returninfo{status}\tUptime:" . &uptime($returninfo{uptime}) . "\n";
		}
	}
	close $fh;
} elsif ($ARGV[0] eq 'listservice') {
	if($ARGV[1] eq '') {
		die "Command line must include FQDN or IP address of host to connect to\n";
	} else {
		print "Begin service list information gathering...\n";
		sleep 1;
		&servicelist($servinterface,$ARGV[1]);
		print "Service list complete...\nOutput can be found in servicelistoutput-$ARGV[1].txt";
	}
} elsif ($ARGV[0] eq 'listproductinfo') {
	if($ARGV[1] eq '') {
		die "Command line must include FQDN or IP address of host to connect to\n";
	} else {
		print "Begin product information gathering...\n";
		sleep 1;
		&productinfo($servinterface,$ARGV[1]);
		print "Product information complete...\nOutput can be found in productlistoutput-$ARGV[1].txt";
	}
} elsif ($ARGV[0] eq 'clusterserviceinfo') {
	my %clusterserviceinfo;
	print "Begin cluster info information gathering...\nThis may take a while. Please be patient.\n";
	sleep 1;
	my @nodes=&getnodes($risinterface,$primaryserver);
	print "Nodes found: ";
	foreach $node (@nodes) {print $node . "\t";}
	print "\n";
	foreach $node (@nodes) {
		my %serviceinfo = &servicelist($servinterface,$node);
		$clusterserviceinfo{$node}= dclone(\%serviceinfo);
	}
	print "Collected service list from each node. Querying for current status.\n";
	sleep 1;
	foreach $node (@nodes) {
		print "Begin querying node $node...\n";
		$numservices = scalar(keys $clusterserviceinfo{$node});
		$nummins = $numservices / 15;
		print "$numservices services found. Estimating $nummins minutes until completion.\n"; 
		foreach $service (keys $clusterserviceinfo{$node}) {
			my %returninfo=&statusservice($servinterface,$node,$service);
			$clusterserviceinfo{$node}{$service}{status}=$returninfo{status};
			$clusterserviceinfo{$node}{$service}{uptime}=&uptime($returninfo{uptime});
		}
		print "Completed querying node $node...\n";
	}
	my ($s,$mi,$h,$d,$mo,$y) = (localtime)[0,1,2,3,4,5];
	my $timeinfo = sprintf '%d%d%d%d%d%d', $h, $mi, $s, $mo+1, $d, $y+1900; 
	open (OUTPUT,">clusterinfo$timeinfo.txt");
	print OUTPUT "Server\tService\tStatus\tUptime\tType\tDependencies\tGroup\tDeployable\n";
	foreach $node (keys %clusterserviceinfo) {
		foreach $service (keys $clusterserviceinfo{$node}) {
			print OUTPUT "$node\t$service\t$clusterserviceinfo{$node}{$service}{status}\t$clusterserviceinfo{$node}{$service}{uptime}\t$clusterserviceinfo{$node}{$service}{type}\t$clusterserviceinfo{$node}{$service}{dependencies}\t$clusterserviceinfo{$node}{$service}{group}\t$clusterserviceinfo{$node}{$service}{deployable}\n";
		}
	}
	close (OUTPUT);
	print "Product information complete...\nOutput can be found in clusterinfo$timeinfo.txt";
} elsif ($ARGV[0] eq 'clusterservicerestart') {
	### cluster restart functions
	my @nodes=&getnodes($risinterface,$primaryserver);
	my @runningnodes;
	print "Nodes found: ";
	foreach $node (@nodes) {print $node . "\t";}
	print "\n";
	foreach $node (@nodes) {
		%response=&statusservice($servinterface,$node,$ARGV[1]);
		if($response{success} eq 'Successful') {
			print "Node: $node Service Status: $response{status} $response{servreason}\n";
			if ($response{status} eq 'Started') {
				push (@runningnodes,$node);
			}
		}
	}
	foreach $node (@runningnodes) {
		print "Attempting restart of $ARGV[1] on $node..\n";
		%response=&controlservice($servinterface,$node,"Restart",$ARGV[1]);
		if($response{success}=~/^Success/) {
			if ($response{uptime} < 60 && $response{status} eq "Started") {
				print "Restart on $node successful\n";
			} else {
				print "Restart request successful on $node. Service in the process of restarting.\n";
			}
		} else {
			DEBUG($response);
		}
	}
} elsif ($ARGV[0] eq 'clustertftprestart') {
	### cluster restart functions
	my $service="Cisco Tftp";
	my @nodes=&getcmnodes($risinterface,$primaryserver);
	my @runningnodes;
	print "CM Nodes found: ";
	foreach $node (@nodes) {print $node . "\t";}
	print "\n";
	foreach $node (@nodes) {
		%response=&statusservice($servinterface,$node,$service);
		if($response{success} eq 'Successful') {
			print "Node: $node Service Status: $response{status}\n";
			if ($response{status} eq 'Started') {
				push (@runningnodes,$node);
			}
		}
	}
	foreach $node (@runningnodes) {
		print "Attempting restart of $service on $node..\n";
		%response=&controlservice($servinterface,$node,"Restart",$service);
		if($response{success}=~/^Success/) {
			if ($response{uptime} < 60 && $response{status} eq "Started") {
				print "Restart on $node successful\n";
			} else {
				print "Restart request successful on $node. Service in the process of restarting.\n";
			}
		} else {
			die Dumper %response;
		}
	}
} else {
	die "No valid tool specified. Valid tools are:\n$validtools\n\n$supporturl";
}

sub deployservice {
	my ($interface, $server, $deploy, $servicename) = @_;
	$interface->set_proxy('https://' . $server . ':8443/controlcenterservice2/services/ControlCenterServices');
	# Test added in to allow redo function
	my $test=0;
	my $response;
	while($test==0){
		$response = $interface->soapDoServiceDeployment( {
				DeploymentServiceRequest =>  { # MyTypes::DeploymentServiceRequest
				  NodeName =>  $server, # string
				  DeployType => $deploy, # DeployType
				  ServiceList =>  { # MyTypes::ArrayOfServices
					item =>  $servicename, # string
				  },
				},
			  },,
			 );

		if (!$response) {
			if ($response->get_faultstring()->serialize() =~ /Exceeded allowed rate/) {
				DEBUG("AXL throttle exceeded. Pausing 10 seconds...\n");
				sleep 20;
				redo;
			} else {
				die $response->get_faultstring()->serialize();
			}
		}
		$test=1;
	}
	$responseinfo=$response->get_soapDoServiceDeploymentReturn();
	$success=$responseinfo->get_ReasonCode();
	$successreason=$responseinfo->get_ReasonString();
	$servhead=$responseinfo->get_ServiceInfoList();
	eval {
		$servbody=$servhead->get_item();
		$servname=$servbody->get_ServiceName();
		$servuptime=$servbody->get_UpTime();
		$servstatus=$servbody->get_ServiceStatus();
	};
	$returninfo{name}=$servicename;
	if ($success=='-1'){$returninfo{success}='Successful'} else {$returninfo{success}='Failed'; DEBUG($response);}
	$returninfo{successreason}=$successreason;
	$returninfo{uptime}=$servuptime;
	$returninfo{status}=$servstatus;
	return %returninfo;
}

sub controlservice {
	my ($interface, $server, $control, $servicename) = @_;
	$interface->set_proxy('https://' . $server . ':8443/controlcenterservice2/services/ControlCenterServices');
	# Test added in to allow redo function
	my $test=0;
	my $response;
	while($test==0){
		$response = $interface->soapDoControlServices( {
			ControlServiceRequest =>  { # MyTypes::ControlServiceRequest
			  NodeName =>  $server, # string
			  ControlType => $control, # ControlType
			  ServiceList =>  { # MyTypes::ArrayOfServices
				item =>  $servicename, # string
			  },
			},
		  },,
		 );

		if (!$response) {
			if ($response->get_faultstring()->serialize() =~ /Exceeded allowed rate/) {
				DEBUG("AXL throttle exceeded. Pausing 10 seconds...\n");
				sleep 10;
				redo;
			} else {
				DEBUG($response);
				die $response->get_faultstring()->serialize();
			}
		}
		$test=1;
	}
	$responseinfo=$response->get_soapDoControlServicesReturn();
	$success=$responseinfo->get_ReasonCode();
	$servhead=$responseinfo->get_ServiceInfoList();
	$successreason=$responseinfo->get_ReasonString();
	$servbody=$servhead->get_item();
	$servname=$servbody->get_ServiceName();
	$servuptime=$servbody->get_UpTime();
	$servstatus=$servbody->get_ServiceStatus();
	$servsuccess=$servbody->get_ReasonCode();
	$returninfo{name}=$servname;
	$temp1=&reasondictionary($servsuccess);
	$temp2=&reasondictionary($success);
	$returninfo{success}="$temp1 -> $temp2"; 
	$returninfo{successreason}=$successreason;
	$returninfo{uptime}=$servuptime;
	$returninfo{status}=$servstatus;
	return %returninfo;
}

sub productinfo {
	my ($interface, $server) = @_;
	$interface->set_proxy('https://' . $server . ':8443/controlcenterservice2/services/ControlCenterServices');
	# Test added in to allow redo function
	my $test=0;
	my $response;
	while($test==0){
		$response = $interface->getProductInformationList( {
			ServiceInfo =>  "",
		 },,
		);
		if (!$response) {
			if ($response->get_faultstring()->serialize() =~ /Exceeded allowed rate/) {
				DEBUG("AXL throttle exceeded. Pausing 10 seconds...\n");
				sleep 10;
				redo;
			} else {
				die $response->get_faultstring()->serialize();
			}
		}
		$test=1;
	}
	$responseinfo=$response->get_getProductInformationListReturn();
	$activeversion=$responseinfo->get_ActiveServerVersion();
	$primarynode=$responseinfo->get_PrimaryNode();
	$secondarynode=$responseinfo->get_SecondaryNode();
	open(OUT,">productlistoutput-$server.txt");
	print OUT "Active Version: $activeversion\n";
	print OUT "Primary Node: $primarynode\n";
	print OUT "Secondary Node: $secondarynode\n";
	#array items
	print OUT "\nProducts List...\n";
	$products=$responseinfo->get_Products();
		$proditem=$products->get_item();
			foreach $product (@{$proditem}) {
				$prodname=$product->get_ProductName();
				$prodversion=$product->get_ProductVersion();
				$proddesc=$product->get_ProductDescription();
				$prodid=$product->get_ProductID();
				$prodshortname=$product->get_ShortName();
				print OUT "\t$prodname\t";
				print OUT "$prodversion\t";
				print OUT "$proddesc\t";
				print OUT "$prodid\t";
				print OUT "$prodshortname\n";
			}
	print OUT "Services List...";
	$services=$responseinfo->get_Services();
		$servitem=$services->get_item();
			foreach $service (@{$servitem}) {
				$servname=$service->get_ServiceName();
				$servtype=$service->get_ServiceType();
				$servdep=$service->get_Deployable();
				$servgroupname=$service->get_GroupName();
				$servprodid=$service->get_ProductID();
				$servdepservices=$service->get_DependentServices();
				#Clean up dependent services return
					$servdepservices=~s/<Service>//g;
					$servdepservices=~s/<\/Service>/,/g;
					$servdepservices=~s/0/None/g;
				#Clean up deployable
					$servdep=~s/0/Not Deployable/g;
					$servdep=~s/1/Deployable/g;
				print OUT "\n\t$servname\t";
				print OUT "$servtype\t";
				print OUT "$servdep\t";
				print OUT "$servgroupname\t";
				print OUT "$servprodid\t";
				print OUT "$servdepservices";
			}
	close(OUT);
	return;
}

sub servicelist {
	my ($interface, $server) = @_;
	my %services;
	$interface->set_proxy('https://' . $server . ':8443/controlcenterservice2/services/ControlCenterServices');
	# Test added in to allow redo function
	my $test=0;
	my $response;
	while($test==0){
		$response = $interface->soapGetStaticServiceList( {
			ServiceInformationResponse =>  "",
		  },,
		);
		if (!$response) {
			if ($response->get_faultstring()->serialize() =~ /Exceeded allowed rate/) {
				DEBUG("AXL throttle exceeded. Pausing 10 seconds...\n");
				sleep 10;
				redo;
			} else {
				die $response->get_faultstring()->serialize();
			}
		}
		$test=1;
	}
	$responseinfo=$response->get_soapGetStaticServiceListReturn();
	$servhead=$responseinfo->get_Services();
	$servbody=$servhead->get_item();
	open(OUT,">servicelistoutput-$server.txt");
	print OUT "Server name\tService name\tService Type\tDependent Services\tGroup Name\tDeployable\n";
	foreach $service (@{$servbody}) {
		$servname=$service->get_ServiceName();
		$servtype=$service->get_ServiceType();
		$servdep=$service->get_DependentServices();
		$servgroup=$service->get_GroupName();
		$servdeploy=$service->get_Deployable();
		#Clean up dependent services return
			$servdep=~s/<Service>//g;
			$servdep=~s/<\/Service>/,/g;
			$servdep=~s/0/None/g;
		#Clean up deployable
			$servdeploy=~s/0/Not Deployable/g;
			$servdeploy=~s/1/Deployable/g;
		print OUT "$server\t";
		print OUT "$servname\t";
		print OUT "$servtype\t";
		print OUT "$servdep\t";
		print OUT "$servgroup\t";
		print OUT "$servdeploy\n";
		$services{$servname}{type}=$servtype;
		$services{$servname}{dependencies}=$servdep;
		$services{$servname}{group}=$servgroup;
		$services{$servname}{deployable}=$servdeploy;
	}
	close(OUT);
	return %services;
}

sub statusservice {
	my ($interface, $server, $servicename) = @_;
	$interface->set_proxy('https://' . $server . ':8443/controlcenterservice2/services/ControlCenterServices');
	# Test added in to allow redo function
	my $test=0;
	my $response;
	while($test==0){
		$response = $interface->soapGetServiceStatus( {
			ServiceStatus =>  $servicename, # string
		 },,
		);
		if (!$response) {
			if ($response->get_faultstring()->serialize() =~ /Exceeded allowed rate/) {
				DEBUG("AXL throttle exceeded. Pausing 10 seconds...\n");
				sleep 10;
				redo;
			} else {
				die $response->get_faultstring()->serialize();
			}
		}
		$test=1;
	}
	$returninfo=$response->get_soapGetServiceStatusReturn();
	$success=$returninfo->get_ReturnCode();
	$successreason=$returninfo->get_ReasonString();
	$servhead=$returninfo->get_ServiceInfoList();
	$servbody=$servhead->get_item();
	$servname=$servbody->get_ServiceName();
	$servuptime=$servbody->get_UpTime();
	$servstatus=$servbody->get_ServiceStatus();
	$servreason=$servbody->get_ReasonCodeString();
	$returninfo{name}=$servname;
	if ($success=='0'){$returninfo{success}="Successful";} else {$returninfo{success}="Failed";}
	$returninfo{successreason}=$successreason;
	$returninfo{uptime}=$servuptime;
	$returninfo{status}=$servstatus;
	$returninfo{servreason}=$servreason;
	return %returninfo;
}

sub uptime {
	my ($uptime) = @_;
	if ($uptime eq "-1") {return "Not Started";}
	$converteduptime = sprintf("%dd %dh %dm %ds",(gmtime $uptime)[7,2,1,0]);
	return $converteduptime;
}

sub getcmnodes {
	my ($interface,$server) = @_;
	my $sql;
	my @returninfo;
	$interface->set_proxy('https://' . $server . ':8443/realtimeservice2/services/RISService');
	if($version eq '9.1') {
		$sql = "select name from processnode where nodeid>'1'";
	} else {
		$sql = "select name from processnode where tkprocessnoderole='1'and nodeid>'1'";
	}
	$response = $interface->executeCCMSQLStatement( {
		ExecuteSQLInputData =>  $sql, # string
		GetColumns =>  { 
			ColumnName =>  'name', # string
		},
		},,
	);
	$response =~ s/ .*"//g;
	$xml = new XML::Simple;
	$data = $xml->XMLin($response);
	if (ref $data->{ExecuteSQLOutputData} eq 'ARRAY') {
		foreach $serverip (@{$data->{ExecuteSQLOutputData}}) {
			push (@returninfo,$serverip->{Value});
		}
	} else {
		push (@returninfo,$data->{ExecuteSQLOutputData}->{Value});
	}
	return @returninfo;
}

sub getimpnodes {
	my ($interface,$server) = @_;
	my $sql;
	my @returninfo;
	$interface->set_proxy('https://' . $server . ':8443/realtimeservice2/services/RISService');
	if($version eq '9.1') {
		die 'This method not supported with version 9.1';
	} else {
		$sql = "select name from processnode where tkprocessnoderole='2'and nodeid>'1'";
	}
	$response = $interface->executeCCMSQLStatement( {
		ExecuteSQLInputData =>  $sql, # string
		GetColumns =>  { 
		ColumnName =>  'name', # string
		},
		},,
	);
	$response =~ s/ .*"//g;

	$xml = new XML::Simple;
	$data = $xml->XMLin($response);
	if (ref $data->{ExecuteSQLOutputData} eq 'ARRAY') {
		foreach $serverip (@{$data->{ExecuteSQLOutputData}}) {
			push (@returninfo,$serverip->{Value});
		}
	} else {
		push (@returninfo,$data->{ExecuteSQLOutputData}->{Value});
	}
	return @returninfo;
}

sub getnodes {
	my ($interface,$server) = @_;
	my $sql;
	my @returninfo;
	$interface->set_proxy('https://' . $server . ':8443/realtimeservice2/services/RISService');
	if($version eq '9.1') {
		die 'This method not supported with version 9.1';
	} else {
		$sql = "select name from processnode where nodeid>'1'";
	}
	$response = $interface->executeCCMSQLStatement( {
		ExecuteSQLInputData =>  $sql, # string
		GetColumns =>  { 
		ColumnName =>  'name', # string
		},
		},,
	);
	$response =~ s/ .*"//g;

	$xml = new XML::Simple;
	$data = $xml->XMLin($response);
	if (ref $data->{ExecuteSQLOutputData} eq 'ARRAY') {
		foreach $serverip (@{$data->{ExecuteSQLOutputData}}) {
			push (@returninfo,$serverip->{Value});
		}
	} else {
		push (@returninfo,$data->{ExecuteSQLOutputData}->{Value});
	}
	return @returninfo;
}

######################
# Password encryption#
######################
sub encryptpwd {
  my( $s ) = @_;
  return( encode_base64( DES::encipher( 'Iw0uldL1k3S0m3Pi3', $s ) ) );
}

######################
# Password decryption#
######################
sub decryptpwd {                                                                                                                                                  
  my( $s ) = @_;
  return( DES::decipher( 'Iw0uldL1k3S0m3Pi3', decode_base64( $s ) ) );
}

sub reasondictionary {
	my( $code ) = @_;
	$reasoncode{-1}="Successful";
	$reasoncode{-1000}="Component already initialized";
	$reasoncode{-1001}="Entry replaced";
	$reasoncode{-1002}="Component not initialized";
	$reasoncode{-1003}="Component is running";
	$reasoncode{-1004}="Entry not found";
	$reasoncode{-1005}="Unable to process event";
	$reasoncode{-1006}="Registration already present";
	$reasoncode{-1007}="Unsuccessful completion";
	$reasoncode{-1008}="Registration not found";
	$reasoncode{-1009}="Missing or invalid environment variable";
	$reasoncode{-1010}="No such service";
	$reasoncode{-1011}="Component is reserved for platform";
	$reasoncode{-1012}="Bad arguments";
	$reasoncode{-1013}="Internal error";
	$reasoncode{-1014}="Entry was already present";
	$reasoncode{-1015}="Error opening IPC";
	$reasoncode{-1016}="No license available";
	$reasoncode{-1017}="Error opening file";
	$reasoncode{-1018}="Error reading file";
	$reasoncode{-1019}="Component is not running";
	$reasoncode{-1020}="Signal ignored";
	$reasoncode{-1021}="Notification ignored";
	$reasoncode{-1022}="Buffer overflow";
	$reasoncode{-1023}="Cannot parse record or entry";
	$reasoncode{-1024}="Out of memory";
	$reasoncode{-1025}="Not connected";
	$reasoncode{-1026}="Component already exists";
	$reasoncode{-1027}="Message was truncated";
	$reasoncode{-1028}="Component is empty";
	$reasoncode{-1029}="Operation is pending";
	$reasoncode{-1030}="Transaction does not exist";
	$reasoncode{-1031}="Operation timed-out";
	$reasoncode{-1032}="File is locked";
	$reasoncode{-1033}="Feature is not implemented yet";
	$reasoncode{-1034}="Alarm was already set";
	$reasoncode{-1035}="Alarm was already clear";
	$reasoncode{-1036}="Dependency is in active state";
	$reasoncode{-1037}="Dependency is not in active state";
	$reasoncode{-1038}="Circular dependencies detected";
	$reasoncode{-1039}="Component already started";
	$reasoncode{-1040}="Component already stopped";
	$reasoncode{-1041}="Dependencies still pending";
	$reasoncode{-1042}="Requested process state transition not allowed";
	$reasoncode{-1043}="No changes";
	$reasoncode{-1044}="Boundary violation for data structure";
	$reasoncode{-1045}="Operation not supported";
	$reasoncode{-1046}="Process recovery in progress";
	$reasoncode{-1047}="Operation pending on scheduled restart";
	$reasoncode{-1048}="Operation pending on active dependencies";
	$reasoncode{-1049}="Operation pending on active dependents";
	$reasoncode{-1050}="Shutdown is in progress";
	$reasoncode{-1051}="Invalid Table Handle";
	$reasoncode{-1052}="Data Base not initialized";
	$reasoncode{-1053}="Data Directory";
	$reasoncode{-1054}="Table Full";
	$reasoncode{-1055}="Deleted Data";
	$reasoncode{-1056}="No Such Record";
	$reasoncode{-1057}="Component already in specified state";
	$reasoncode{-1058}="Out of range";
	$reasoncode{-1059}="Cannot create object";
	$reasoncode{-1060}="MSO refused, standby system not ready.";
	$reasoncode{-1061}="MSO refused, standby state update still in progress. Try again later.";
	$reasoncode{-1062}="MSO refused, standby state update failed. Verify configuration on standby.";
	$reasoncode{-1063}="MSO refused, Warm start-up in progress.";
	$reasoncode{-1064}="MSO refused, Warm start-up Failed.";
	$reasoncode{-1065}="MSO refused, System is not in active state";
	$reasoncode{-1066}="MSO refused, Detected standalone Flag";
	$reasoncode{-1067}="Invalid Token presented in reques";
	$reasoncode{-1068}="Service Not Activated";
	$reasoncode{-1069}="Commanded Out of Service";
	$reasoncode{-1070}="Multiple Modules have error";
	$reasoncode{-1071}="Encountered exception";
	$reasoncode{-1072}="Invalid context path was specified";
	$reasoncode{-1073}="No context exists";
	$reasoncode{-1074}="No context path was specified";
	$reasoncode{-1075}="Application already exists";
	return $reasoncode{$code};
}
