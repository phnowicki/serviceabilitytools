use MyInterfaces::ControlCenterServices::ControlCenterServicesPort;
use XML::LibXML;
my $interface = MyInterfaces::ControlCenterServices::ControlCenterServicesPort->new();
$interface->set_proxy('https://192.168.1.45:8443/controlcenterservice2/services/ControlCenterServices');
my $response;
my $user = "admin";
my $password = "C!sc0123";

BEGIN{
sub SOAP::Transport::HTTP::Client::get_basic_credentials {
    return ($user => $password)
}
}
open(OUT,">servicelistoutput.txt");
print "Service List Started...\n";
print OUT "Time\tService name\tService Type\tDependent Services\tGroup Name\tDeployable\n";
	$servicename="";
	$response = $interface->soapGetStaticServiceList( {
		ServiceInformationResponse =>  $servicename, # string
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
	$returninfo=$response->get_soapGetStaticServiceListReturn();
	$servhead=$returninfo->get_Services();
	$servbody=$servhead->get_item();
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
		print OUT localtime() . "\t";
		print OUT "$servname\t";
		print OUT "$servtype\t";
		print OUT "$servdep\t";
		print OUT "$servgroup\t";
		print OUT "$servdeploy\n";
	}
print "Complete... Output can be found in servicelistoutput.txt\n";
