use CiscoUC::Serviceability::10_0::Interfaces::ControlCenterServices::ControlCenterServicesPort;
my $interface = CiscoUC::Serviceability::10_0::Interfaces::ControlCenterServices::ControlCenterServicesPort->new();
$interface->set_proxy('https://192.168.1.45:8443/controlcenterservice2/services/ControlCenterServices');
my $response;
my $user = "admin";
my $password = "C!sc0123";

BEGIN{
sub SOAP::Transport::HTTP::Client::get_basic_credentials {
    return ($user => $password)
}
}
print "Service startup...\n";
print "Time\t\t\tService name\t\tCurrent Status\t\tUptime\n";
open(IN,$ARGV[0]) or die "can't open input file";
while(<IN>) {
	($servicename,$hostname) = split("\t");
	 $response = $interface->soapGetServiceStatus( {
		ServiceStatus =>  $servicename, # string
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
	$returninfo=$response->get_soapGetServiceStatusReturn();
	$success=$returninfo->get_ReturnCode();
	$successreason=$returninfo->get_ReasonString();
	$servhead=$returninfo->get_ServiceInfoList();
	$servbody=$servhead->get_item();
	$servname=$servbody->get_ServiceName();
	$servuptime=$servbody->get_UpTime();
	$servstatus=$servbody->get_ServiceStatus();
	print localtime() . "\t";
	print "$servname\t";
	print "$servstatus\t\t";
	printf "%dd %dh %dm %ds\n",(gmtime $servuptime)[7,2,1,0];
}

