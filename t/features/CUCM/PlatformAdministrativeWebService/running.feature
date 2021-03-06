#===============================================================================
#
# FILE: CUCM\PlatformAdministrativeWebService\running.feature
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
Given A server running Cisco CUCM version "any" is accessible
And role of the server is "any" 
And the following user credentials
	| username  | password |
	| adminuser | foobar   |


	Scenario: Start "Platform Administrative Web Service" service
	When we submit a request to start "Platform Administrative Web Service" service
	And the "Platform Administrative Web Service" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Platform Administrative Web Service" service should be "STARTED"

	Scenario: Stop "Platform Administrative Web Service" service
	When we submit a request to stop "Platform Administrative Web Service" service
	And the "Platform Administrative Web Service" service is "started"
	Then we should receive "STOPPED" message
	And the status of "Platform Administrative Web Service" service should be "STOPPED"

	Scenario: Restart "Platform Administrative Web Service" service
	When we submit a request to restart "Platform Administrative Web Service" service
	And the "Platform Administrative Web Service" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "Platform Administrative Web Service" service should be "STARTED"
	And the up time of "Platform Administrative Web Service" service should be less than 1 minute

	Scenario: Restart "Platform Administrative Web Service" service that is stopped
	When we submit a request to restart "Platform Administrative Web Service" service
	And the "Platform Administrative Web Service" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Platform Administrative Web Service" service should be "STARTED"
	And the up time of "Platform Administrative Web Service" service should be less than 1 minute

	Scenario: Start "Platform Administrative Web Service" service that is already started
	When we submit a request to start "Platform Administrative Web Service" service
	And the "Platform Administrative Web Service" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "Platform Administrative Web Service" service should be "STARTED"

	Scenario: Stop "Platform Administrative Web Service" service that is already stopped
	When we submit a request to stop "Platform Administrative Web Service" service
	And the "Platform Administrative Web Service" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "Platform Administrative Web Service" service should be "STOPPED"