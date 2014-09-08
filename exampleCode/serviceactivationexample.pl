use MyInterfaces::ControlCenterServices::ControlCenterServicesPort;
use XML::LibXML;
my $interface = MyInterfaces::ControlCenterServices::ControlCenterServicesPort->new();
$interface->set_proxy('https://10.89.179.90:8443/controlcenterservice2/services/ControlCenterServices');
my $response;
my $user = "admin";
my $password = "C!sco123";

BEGIN{
sub SOAP::Transport::HTTP::Client::get_basic_credentials {
    return ($user => $password)
}
}
print "Service Activation Started...\n";
print "Time\t\t\tService name\t\tActivation Status\t\tService Status\t\tUptime\n";
open(IN,$ARGV[0]) or die "can't open input file";
while(<IN>) {
	($servicename,$hostname) = split("\t");
	$response = $interface->soapDoServiceDeployment( {
		DeploymentServiceRequest =>  { # MyTypes::DeploymentServiceRequest
		  NodeName =>  "CUCM3", # string
		  DeployType => "Deploy", # DeployType
		  ServiceList =>  { # MyTypes::ArrayOfServices
			item =>  $servicename, # string
		  },
		},
	  },,
	 );

	if (!$response) {
		if ($response->get_faultstring()->serialize() =~ /Exceeded allowed rate/) {
			print "AXL throttle exceeded. Pausing 10 seconds...\n";
			sleep 10;
			redo;
		} else {
			die $response->get_faultstring()->serialize();
		}
	}
	$returninfo=$response->get_soapDoServiceDeploymentReturn();
	$success=$returninfo->get_ReturnCode();
	$servhead=$returninfo->get_ServiceInfoList();
	$servbody=$servhead->get_item();
	$servname=$servbody->get_ServiceName();
	$servuptime=$servbody->get_UpTime();
	$servstatus=$servbody->get_ServiceStatus();
	print localtime() . "\t";
	print "$servname\t";
	if ($success=='0'){
		print "Activation Successful\t";
	} else {
		print "Activation Failed\t";
	}
	print "$servstatus\t\t";
	printf "%dd, %dh, %dm and %ds\n",(gmtime $servuptime)[7,2,1,0];
}

