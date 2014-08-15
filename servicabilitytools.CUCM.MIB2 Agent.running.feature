#===============================================================================
#
# FILE: servicabilitytools.CUCM.MIB2 Agent.running.feature
#
# AUTHOR: Patrick Nowicki (patrick.nowicki.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: Fri Aug 15 12:07:13 2014
# REVISION: 3
#===============================================================================

Feature: Serviceability Tools Application Testing
As a Cisco Communications Engineer and developer
I want to test my application
In order to be able to easily test updates to code
And to regression test the many possible versions of server software

Background:
Given A server running Cisco CUCM version "any" is accessible
And the following user credentials
	| username  | password |
	| adminuser | foobar   |


	Scenario: Start "MIB2 Agent" service
	When we submit a request to start "MIB2 Agent" service
	And the "MIB2 Agent" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "MIB2 Agent" service should be "STARTED"

	Scenario: Stop "MIB2 Agent" service
	When we submit a request to stop "MIB2 Agent" service
	And the "MIB2 Agent" service is "started"
	Then we should receive "STOPPED" message
	And the status of "MIB2 Agent" service should be "STOPPED"

	Scenario: Restart "MIB2 Agent" service
	When we submit a request to restart "MIB2 Agent" service
	And the "MIB2 Agent" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "MIB2 Agent" service should be "STARTED"
	And the up time of "MIB2 Agent" service should be less than 1 minute

	Scenario: Restart "MIB2 Agent" service that is stopped
	When we submit a request to restart "MIB2 Agent" service
	And the "MIB2 Agent" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "MIB2 Agent" service should be "STARTED"
	And the up time of "MIB2 Agent" service should be less than 1 minute

	Scenario: Start "MIB2 Agent" service that is already started
	When we submit a request to start "MIB2 Agent" service
	And the "MIB2 Agent" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "MIB2 Agent" service should be "STARTED"

	Scenario: Stop "MIB2 Agent" service that is already stopped
	When we submit a request to stop "MIB2 Agent" service
	And the "MIB2 Agent" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "MIB2 Agent" service should be "STOPPED"