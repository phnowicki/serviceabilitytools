#===============================================================================
#
# FILE: IMP\CiscoXCPConnectionManager\activation.feature
#
# AUTHOR: Patrick Nowicki (patrick.nowicki.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: Sat Aug 16 02:05:34 2014
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


	Scenario: Activate "Cisco XCP Connection Manager" service
	When we submit a request to activate "Cisco XCP Connection Manager" service
	And the "Cisco XCP Connection Manager" service is "deactivated"
	Then we should receive "ACTIVATED" message
	And the status of "Cisco XCP Connection Manager" service should be "ACTIVATED"

	Scenario: Deactivate "Cisco XCP Connection Manager" service
	When we submit a request to deactivate "Cisco XCP Connection Manager" service
	And the "Cisco XCP Connection Manager" service is "activated"
	Then we should receive "DEACTIVATED" message
	And the status of "Cisco XCP Connection Manager" service should be "DEACTIVATED"

	Scenario: Activate "Cisco XCP Connection Manager" service that is already activated
	When we submit a request to activate "Cisco XCP Connection Manager" service
	And the "Cisco XCP Connection Manager" service is "activated"
	Then we should receive "ALREADY ACTIVATED" message
	And the status of "Cisco XCP Connection Manager" service should be "ACTIVATED"

	Scenario: Deactivate "Cisco XCP Connection Manager" service that is already deactivated
	When we submit a request to deactivate "Cisco XCP Connection Manager" service
	And the "Cisco XCP Connection Manager" service is "deactivated"
	Then we should receive "ALREADY DEACTIVATED" message
	And the status of "Cisco XCP Connection Manager" service should be "DEACTIVATED"