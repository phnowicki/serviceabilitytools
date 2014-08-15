#===============================================================================
#
# FILE: servicabilitytools.IMP.Cisco IM and Presence Admin.running.feature
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
Given A server running Cisco IMP version "any" is accessible
And the following user credentials
	| username  | password |
	| adminuser | foobar   |


	Scenario: Start "Cisco IM and Presence Admin" service
	When we submit a request to start "Cisco IM and Presence Admin" service
	And the "Cisco IM and Presence Admin" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco IM and Presence Admin" service should be "STARTED"

	Scenario: Stop "Cisco IM and Presence Admin" service
	When we submit a request to stop "Cisco IM and Presence Admin" service
	And the "Cisco IM and Presence Admin" service is "started"
	Then we should receive "STOPPED" message
	And the status of "Cisco IM and Presence Admin" service should be "STOPPED"

	Scenario: Restart "Cisco IM and Presence Admin" service
	When we submit a request to restart "Cisco IM and Presence Admin" service
	And the "Cisco IM and Presence Admin" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "Cisco IM and Presence Admin" service should be "STARTED"
	And the up time of "Cisco IM and Presence Admin" service should be less than 1 minute

	Scenario: Restart "Cisco IM and Presence Admin" service that is stopped
	When we submit a request to restart "Cisco IM and Presence Admin" service
	And the "Cisco IM and Presence Admin" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco IM and Presence Admin" service should be "STARTED"
	And the up time of "Cisco IM and Presence Admin" service should be less than 1 minute

	Scenario: Start "Cisco IM and Presence Admin" service that is already started
	When we submit a request to start "Cisco IM and Presence Admin" service
	And the "Cisco IM and Presence Admin" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "Cisco IM and Presence Admin" service should be "STARTED"

	Scenario: Stop "Cisco IM and Presence Admin" service that is already stopped
	When we submit a request to stop "Cisco IM and Presence Admin" service
	And the "Cisco IM and Presence Admin" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "Cisco IM and Presence Admin" service should be "STOPPED"