use MyInterfaces::ControlCenterServices::ControlCenterServicesPort;
use XML::LibXML;
my $interface = MyInterfaces::ControlCenterServices::ControlCenterServicesPort->new();
$interface->set_proxy('https://192.168.1.45:8443/controlcenterservice2/services/ControlCenterServices');
my $response;
my $user = "admin";
my $password = "C!sc0123";
open(OUT,">productlistoutput.txt");

BEGIN{
sub SOAP::Transport::HTTP::Client::get_basic_credentials {
    return ($user => $password)
}
}
print "Product List Started...\n";
$blah="";
	$response = $interface->getProductInformationList( {
		ServiceInfo =>  $blah, # string
	 },,
	);

	if (!$response) {
		if ($response->get_faultstring()->serialize() =~ /Exceeded allowed rate/) {
			print OUT "AXL throttle exceeded. Pausing 10 seconds...\n";
			sleep 10;
			redo;
		} else {
			die $response->get_faultstring()->serialize();
		}
	}
	$returninfo=$response->get_getProductInformationListReturn();
	$activeversion=$returninfo->get_ActiveServerVersion();
	$primarynode=$returninfo->get_PrimaryNode();
	$secondarynode=$returninfo->get_SecondaryNode();
	print OUT "Active Version: $activeversion\n";
	print OUT "Primary Node: $primarynode\n";
	print OUT "Secondary Node: $secondarynode\n";
	#array items
	print OUT "\nProducts List...\n";
	$products=$returninfo->get_Products();
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
	$services=$returninfo->get_Services();
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
print "Complete... Output can be found in productlistoutput.txt\n";