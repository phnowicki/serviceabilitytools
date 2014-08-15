#===============================================================================
#
# FILE: serviceabilitytools.CUCM.Cisco WebDialer Web Service.running.feature
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


	Scenario: Start "Cisco WebDialer Web Service" service
	When we submit a request to start "Cisco WebDialer Web Service" service
	And the "Cisco WebDialer Web Service" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco WebDialer Web Service" service should be "STARTED"

	Scenario: Stop "Cisco WebDialer Web Service" service
	When we submit a request to stop "Cisco WebDialer Web Service" service
	And the "Cisco WebDialer Web Service" service is "started"
	Then we should receive "STOPPED" message
	And the status of "Cisco WebDialer Web Service" service should be "STOPPED"

	Scenario: Restart "Cisco WebDialer Web Service" service
	When we submit a request to restart "Cisco WebDialer Web Service" service
	And the "Cisco WebDialer Web Service" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "Cisco WebDialer Web Service" service should be "STARTED"
	And the up time of "Cisco WebDialer Web Service" service should be less than 1 minute

	Scenario: Restart "Cisco WebDialer Web Service" service that is stopped
	When we submit a request to restart "Cisco WebDialer Web Service" service
	And the "Cisco WebDialer Web Service" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco WebDialer Web Service" service should be "STARTED"
	And the up time of "Cisco WebDialer Web Service" service should be less than 1 minute

	Scenario: Start "Cisco WebDialer Web Service" service that is already started
	When we submit a request to start "Cisco WebDialer Web Service" service
	And the "Cisco WebDialer Web Service" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "Cisco WebDialer Web Service" service should be "STARTED"

	Scenario: Stop "Cisco WebDialer Web Service" service that is already stopped
	When we submit a request to stop "Cisco WebDialer Web Service" service
	And the "Cisco WebDialer Web Service" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "Cisco WebDialer Web Service" service should be "STOPPED"