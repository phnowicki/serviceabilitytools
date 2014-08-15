open(ACT,$ARGV[0]);
open(LIST,$ARGV[1]);
$datestring = localtime();
$introtext = "#===============================================================================
#
# FILE: ";

$introtext1="\n#
# AUTHOR: Patrick Nowicki (patrick.nowicki@cdw.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: $datestring
# REVISION: 3
#===============================================================================

Feature: Serviceability Tools Application Testing
As a Cisco Communications Engineer and developer
I want to test my application
In order to be able to easily test updates to code
And to regression test the many possible versions of server software

Background:
Given A server running Cisco ";
$introtext2=" version \"any\" is accessible
And the following user credentials
	| username  | password |
	| adminuser | foobar   |\n";
	

while (<ACT>) {
	chomp;
	@data=split("\t",$_);
	$outfilename = "servicabilitytools.$data[1].$data[0].activation.feature";
	open(OUT,">$outfilename");
	print OUT $introtext . $outfilename . $introtext1 . $data[1] . $introtext2;
	print OUT "\n
	Scenario: Activate \"$data[0]\" service
	When we submit a request to activate \"$data[0]\" service
	And the \"$data[0]\" service is \"deactivated\"
	Then we should receive \"ACTIVATED\" message
	And the status of \"$data[0]\" service should be \"ACTIVATED\"";
	print OUT "\n
	Scenario: Deactivate \"$data[0]\" service
	When we submit a request to deactivate \"$data[0]\" service
	And the \"$data[0]\" service is \"activated\"
	Then we should receive \"DEACTIVATED\" message
	And the status of \"$data[0]\" service should be \"DEACTIVATED\"";
	print OUT "\n
	Scenario: Activate \"$data[0]\" service that is already activated
	When we submit a request to activate \"$data[0]\" service
	And the \"$data[0]\" service is \"activated\"
	Then we should receive \"ALREADY ACTIVATED\" message
	And the status of \"$data[0]\" service should be \"ACTIVATED\"";
	print OUT "\n
	Scenario: Deactivate \"$data[0]\" service that is already deactivated
	When we submit a request to deactivate \"$data[0]\" service
	And the \"$data[0]\" service is \"deactivated\"
	Then we should receive \"ALREADY DEACTIVATED\" message
	And the status of \"$data[0]\" service should be \"DEACTIVATED\"";
	close(OUT);
}
while (<LIST>) {
	chomp;
	@data=split("\t",$_);
	$outfilename = "servicabilitytools.$data[1].$data[0].running.feature";
	open(OUT,">$outfilename");
	print OUT $introtext . $outfilename . $introtext1 . $data[1] . $introtext2;
	print OUT "\n
	Scenario: Start \"$data[0]\" service
	When we submit a request to start \"$data[0]\" service
	And the \"$data[0]\" service is \"stopped\"
	Then we should receive \"STARTED\" message
	And the status of \"$data[0]\" service should be \"STARTED\"";
	print OUT "\n
	Scenario: Stop \"$data[0]\" service
	When we submit a request to stop \"$data[0]\" service
	And the \"$data[0]\" service is \"started\"
	Then we should receive \"STOPPED\" message
	And the status of \"$data[0]\" service should be \"STOPPED\"";
	print OUT "\n
	Scenario: Restart \"$data[0]\" service
	When we submit a request to restart \"$data[0]\" service
	And the \"$data[0]\" service is \"started\"
	Then we should receive \"RESTARTED\" message
	And the status of \"$data[0]\" service should be \"STARTED\"
	And the up time of \"$data[0]\" service should be less than 1 minute";
	print OUT "\n
	Scenario: Restart \"$data[0]\" service that is stopped
	When we submit a request to restart \"$data[0]\" service
	And the \"$data[0]\" service is \"stopped\"
	Then we should receive \"STARTED\" message
	And the status of \"$data[0]\" service should be \"STARTED\"
	And the up time of \"$data[0]\" service should be less than 1 minute";
	print OUT "\n
	Scenario: Start \"$data[0]\" service that is already started
	When we submit a request to start \"$data[0]\" service
	And the \"$data[0]\" service is \"started\"
	Then we should receive \"ALREADY STARTED\" message
	And the status of \"$data[0]\" service should be \"STARTED\"";
	print OUT "\n
	Scenario: Stop \"$data[0]\" service that is already stopped
	When we submit a request to stop \"$data[0]\" service
	And the \"$data[0]\" service is \"stopped\"
	Then we should receive \"ALREADY STOPPED\" message
	And the status of \"$data[0]\" service should be \"STOPPED\"";
	close(OUT);
}
close(LIST);
open(LIST,$ARGV[1]);
while (<LIST>) {
	chomp;
	@data=split("\t",$_);
	$outfilename = "servicabilitytools.$data[1].$data[0].status.feature";
	open(OUT,">$outfilename");
	print OUT $introtext . $outfilename . $introtext1 . $data[1] . $introtext2;
	print OUT "\n
	Scenario: Check the status of a stopped \"$data[0]\" service
	When we submit a request for the status of the \"$data[0]\" service
	And the \"$data[0]\" service is \"stopped\"
	Then we should receive \"STOPPED\" message";
	print OUT "\n
	Scenario: Check the status of a running \"$data[0]\" service
	When we submit a request for the status of the \"$data[0]\" service
	And the \"$data[0]\" service is \"running\"
	Then we should receive \"STARTED\" message";
	print OUT "\n
	Scenario: Check the status of a hung \"$data[0]\" service
	When we submit a request for the status of the \"$data[0]\" service
	And the \"$data[0]\" service is \"so slow it's not really responding\"
	Then we should receive \"HUNG\" message";
	close(OUT);
}
close(ACT);
close(LIST);

	
