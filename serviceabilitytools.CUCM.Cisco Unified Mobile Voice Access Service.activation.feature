#===============================================================================
#
# FILE: serviceabilitytools.CUCM.Cisco Unified Mobile Voice Access Service.activation.feature
#
# AUTHOR: Patrick Nowicki (patrick.nowicki.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: Fri Aug 15 12:48:50 2014
# REVISION: 3
#===============================================================================

Feature: Serviceability Tools Application Testing
As a Cisco Communications Engineer and developer
I want to test my application
In order to be able to easily test updates to code
And to regression test the many possible versions of server software

Background:
Given A server running Cisco CUCM version "any" is accessible
And role of the server is "Publisher" 
And the following user credentials
	| username  | password |
	| adminuser | foobar   |


	Scenario: Activate "Cisco Unified Mobile Voice Access Service" service
	When we submit a request to activate "Cisco Unified Mobile Voice Access Service" service
	And the "Cisco Unified Mobile Voice Access Service" service is "deactivated"
	Then we should receive "ACTIVATED" message
	And the status of "Cisco Unified Mobile Voice Access Service" service should be "ACTIVATED"

	Scenario: Deactivate "Cisco Unified Mobile Voice Access Service" service
	When we submit a request to deactivate "Cisco Unified Mobile Voice Access Service" service
	And the "Cisco Unified Mobile Voice Access Service" service is "activated"
	Then we should receive "DEACTIVATED" message
	And the status of "Cisco Unified Mobile Voice Access Service" service should be "DEACTIVATED"

	Scenario: Activate "Cisco Unified Mobile Voice Access Service" service that is already activated
	When we submit a request to activate "Cisco Unified Mobile Voice Access Service" service
	And the "Cisco Unified Mobile Voice Access Service" service is "activated"
	Then we should receive "ALREADY ACTIVATED" message
	And the status of "Cisco Unified Mobile Voice Access Service" service should be "ACTIVATED"

	Scenario: Deactivate "Cisco Unified Mobile Voice Access Service" service that is already deactivated
	When we submit a request to deactivate "Cisco Unified Mobile Voice Access Service" service
	And the "Cisco Unified Mobile Voice Access Service" service is "deactivated"
	Then we should receive "ALREADY DEACTIVATED" message
	And the status of "Cisco Unified Mobile Voice Access Service" service should be "DEACTIVATED"