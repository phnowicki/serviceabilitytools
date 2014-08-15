#===============================================================================
#
# FILE: serviceabilitytools.CUCM.MIB2 Agent.status.feature
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
And role of the server is "any" 
And the following user credentials
	| username  | password |
	| adminuser | foobar   |


	Scenario: Check the status of a stopped "MIB2 Agent" service
	When we submit a request for the status of the "MIB2 Agent" service
	And the "MIB2 Agent" service is "stopped"
	Then we should receive "STOPPED" message

	Scenario: Check the status of a running "MIB2 Agent" service
	When we submit a request for the status of the "MIB2 Agent" service
	And the "MIB2 Agent" service is "running"
	Then we should receive "STARTED" message

	Scenario: Check the status of a hung "MIB2 Agent" service
	When we submit a request for the status of the "MIB2 Agent" service
	And the "MIB2 Agent" service is "so slow it's not really responding"
	Then we should receive "HUNG" message