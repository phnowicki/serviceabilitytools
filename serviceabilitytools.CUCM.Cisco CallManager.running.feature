#===============================================================================
#
# FILE: serviceabilitytools.CUCM.Cisco CallManager.running.feature
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


	Scenario: Start "Cisco CallManager" service
	When we submit a request to start "Cisco CallManager" service
	And the "Cisco CallManager" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco CallManager" service should be "STARTED"

	Scenario: Stop "Cisco CallManager" service
	When we submit a request to stop "Cisco CallManager" service
	And the "Cisco CallManager" service is "started"
	Then we should receive "STOPPED" message
	And the status of "Cisco CallManager" service should be "STOPPED"

	Scenario: Restart "Cisco CallManager" service
	When we submit a request to restart "Cisco CallManager" service
	And the "Cisco CallManager" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "Cisco CallManager" service should be "STARTED"
	And the up time of "Cisco CallManager" service should be less than 1 minute

	Scenario: Restart "Cisco CallManager" service that is stopped
	When we submit a request to restart "Cisco CallManager" service
	And the "Cisco CallManager" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco CallManager" service should be "STARTED"
	And the up time of "Cisco CallManager" service should be less than 1 minute

	Scenario: Start "Cisco CallManager" service that is already started
	When we submit a request to start "Cisco CallManager" service
	And the "Cisco CallManager" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "Cisco CallManager" service should be "STARTED"

	Scenario: Stop "Cisco CallManager" service that is already stopped
	When we submit a request to stop "Cisco CallManager" service
	And the "Cisco CallManager" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "Cisco CallManager" service should be "STOPPED"