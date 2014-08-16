#===============================================================================
#
# FILE: IMP\CiscoXCPConfigManager\running.feature
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


	Scenario: Start "Cisco XCP Config Manager" service
	When we submit a request to start "Cisco XCP Config Manager" service
	And the "Cisco XCP Config Manager" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco XCP Config Manager" service should be "STARTED"

	Scenario: Stop "Cisco XCP Config Manager" service
	When we submit a request to stop "Cisco XCP Config Manager" service
	And the "Cisco XCP Config Manager" service is "started"
	Then we should receive "STOPPED" message
	And the status of "Cisco XCP Config Manager" service should be "STOPPED"

	Scenario: Restart "Cisco XCP Config Manager" service
	When we submit a request to restart "Cisco XCP Config Manager" service
	And the "Cisco XCP Config Manager" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "Cisco XCP Config Manager" service should be "STARTED"
	And the up time of "Cisco XCP Config Manager" service should be less than 1 minute

	Scenario: Restart "Cisco XCP Config Manager" service that is stopped
	When we submit a request to restart "Cisco XCP Config Manager" service
	And the "Cisco XCP Config Manager" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco XCP Config Manager" service should be "STARTED"
	And the up time of "Cisco XCP Config Manager" service should be less than 1 minute

	Scenario: Start "Cisco XCP Config Manager" service that is already started
	When we submit a request to start "Cisco XCP Config Manager" service
	And the "Cisco XCP Config Manager" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "Cisco XCP Config Manager" service should be "STARTED"

	Scenario: Stop "Cisco XCP Config Manager" service that is already stopped
	When we submit a request to stop "Cisco XCP Config Manager" service
	And the "Cisco XCP Config Manager" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "Cisco XCP Config Manager" service should be "STOPPED"