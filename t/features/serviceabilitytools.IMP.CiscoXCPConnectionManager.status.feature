#===============================================================================
#
# FILE: serviceabilitytools.IMP.CiscoXCPConnectionManager.status.feature
#
# AUTHOR: Patrick Nowicki (patrick.nowicki.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: Sat Aug 16 01:51:13 2014
# REVISION: 3
#===============================================================================

Feature: Serviceability Tools Application Testing
As a Cisco Communications Engineer and developer
I want to test my application
In order to be able to easily test updates to code
And to regression test the many possible versions of server software

Background:
Given A server running Cisco IMP version "any" is accessible
And role of the server is "any" 
And the following user credentials
	| username  | password |
	| adminuser | foobar   |


	Scenario: Check the status of a stopped "Cisco XCP Connection Manager" service
	When we submit a request for the status of the "Cisco XCP Connection Manager" service
	And the "Cisco XCP Connection Manager" service is "stopped"
	Then we should receive "STOPPED" message

	Scenario: Check the status of a running "Cisco XCP Connection Manager" service
	When we submit a request for the status of the "Cisco XCP Connection Manager" service
	And the "Cisco XCP Connection Manager" service is "running"
	Then we should receive "STARTED" message

	Scenario: Check the status of a hung "Cisco XCP Connection Manager" service
	When we submit a request for the status of the "Cisco XCP Connection Manager" service
	And the "Cisco XCP Connection Manager" service is "so slow it's not really responding"
	Then we should receive "HUNG" message