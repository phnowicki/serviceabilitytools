######################################################################################################
# serviceabilitytools.pl
# Service Control and Activation for Cisco Communications Manager and Instant Messaging and Presence
# Author: Patrick Nowicki - patrick.nowicki@cdw.com
# Version: 1.0
# Date: 9/1/2014
# 
######################################################################################################

# Support info
my $supporturl="See https://discdungeon.cdw.com/vvtwiki/index.php/Serviceabilitytools for more info.\n";
my $validtools="activateservice\ndeactivateservice\nstartservice\nstopservice\nrestartservice\nstatusservice\nlistservice\nlistproductinfo\nclusterrestart\n";
my $supportedversions = "(10.0,10.5)";
my $interface;

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

#------- Add in function to encrypt password
#####
####
###
##
#

close (CONFIG);


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
	use ServiceabilityTools::10::0::Interfaces::ControlCenterServices::ControlCenterServicesPort;
	$interface = ServiceabilityTools::10::0::Interfaces::ControlCenterServices::ControlCenterServicesPort->new();
} elsif ($version eq '10.5') {
	use ServiceabilityTools::10::5::Interfaces::ControlCenterServices::ControlCenterServicesPort;
	$interface = ServiceabilityTools::10::5::Interfaces::ControlCenterServices::ControlCenterServicesPort->new();
} else {
	die "Tool not set up to run against version $version. Please use a supported version. $supportedversions\n\n$supporturl";
}



###########
# Analyse command line args
if ($ARGV[0] eq 'activateservice') {
	### act serv functions
} elsif ($ARGV[0] eq 'deactivateservice') {
	### deactivate serv functions
} elsif ($ARGV[0] eq 'startservice') {
	### start serv functions
} elsif ($ARGV[0] eq 'stopservice') {
	### stop serv functions
} elsif ($ARGV[0] eq 'restartservice') {
	### restart serv functions
} elsif ($ARGV[0] eq 'statusservice') {
	### status serv functions
} elsif ($ARGV[0] eq 'listservice') {
	### list serv function
	&servicelist($interface,$ARGV[1]);
	print "Service list complete...\nOutput can be found in servicelistoutput-$ARGV[1].txt";
} elsif ($ARGV[0] eq 'listproductinfo') {
	### product info function
	&productinfo($interface,$ARGV[1]);
	print "Product information complete...\nOutput can be found in productlistoutput-$ARGV[1].txt";
} elsif ($ARGV[0] eq 'clusterrestart') {
	### cluster restart functions
} else {
	die "No valid tool specified. Valid tools are:\n$validtools\n\n$supporturl";
}

sub actdeactservice {
	my ($interface, $server, $nodename, $deploy, $servicename) = @_;
	$interface->set_proxy('https://' . $server . ':8443/controlcenterservice2/services/ControlCenterServices');
	# Test added in to allow redo function
	my $test=0;
	my $response;
	while($test==0){
		$response = $interface->soapDoServiceDeployment( {
				DeploymentServiceRequest =>  { # MyTypes::DeploymentServiceRequest
				  NodeName =>  $nodename, # string
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
				sleep 10;
				redo;
			} else {
				die $response->get_faultstring()->serialize();
			}
		}
		$test=1;
	}
	$responseinfo=$response->get_soapDoControlServicesReturn();
	$success=$responseinfo->get_ReturnCode();
	$successreason=$responseinfo->get_ReasonString();
	$servhead=$responseinfo->get_ServiceInfoList();
	$servbody=$servhead->get_item();
	$servname=$servbody->get_ServiceName();
	$servuptime=$servbody->get_UpTime();
	$servstatus=$servbody->get_ServiceStatus();
	$returninfo{name}=$servname;
	if ($success=='0'){$returninfo{success}='Successful'} else {$returninfo{success}='Failed';}
	$returninfo{successreason}=$successreason;
	$returninfo{uptime}=$servuptime;
	$returninfo{status}=$servstatus;
	return %returninfo;
}

sub startstopservice {
	my ($interface, $server, $nodename, $control, $servicename) = @_;
	$interface->set_proxy('https://' . $server . ':8443/controlcenterservice2/services/ControlCenterServices');
	# Test added in to allow redo function
	my $test=0;
	my $response;
	while($test==0){
		$response = $interface->soapDoControlServices( {
			ControlServiceRequest =>  { # MyTypes::ControlServiceRequest
			  NodeName =>  $nodename, # string
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
				die $response->get_faultstring()->serialize();
			}
		}
		$test=1;
	}
	$responseinfo=$response->get_soapDoServiceDeploymentReturn();
	$success=$responseinfo->get_ReturnCode();
	$servhead=$responseinfo->get_ServiceInfoList();
	$servbody=$servhead->get_item();
	$servname=$servbody->get_ServiceName();
	$servuptime=$servbody->get_UpTime();
	$servstatus=$servbody->get_ServiceStatus();
	$returninfo{name}=$servname;
	if ($success=='0'){$returninfo{success}='Successful'} else {$returninfo{success}='Failed';}
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
	}
	close(OUT);
	return;
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
	$responseinfo=$response->get_soapGetServiceStatusReturn();
	$success=$responseinfo->get_ReturnCode();
	$successreason=$responseinfo->get_ReasonString();
	$servhead=$responseinfo->get_ServiceInfoList();
	$servbody=$servhead->get_item();
	$servname=$servbody->get_ServiceName();
	$servuptime=$servbody->get_UpTime();
	$servstatus=$servbody->get_ServiceStatus();
	$returninfo{name}=$servname;
	if ($success=='0'){$returninfo{success}='Successful'} else {$returninfo{success}='Failed';}
	$returninfo{successreason}=$successreason;
	$returninfo{uptime}=$servuptime;
	$returninfo{status}=$servstatus;
	return %returninfo;
}

sub uptime {
	my ($uptime) = @_;
	$converteduptime = "%dd %dh %dm %ds",(gmtime $uptime)[7,2,1,0];
	return $converteduptime;
}
