#===============================================================================
#
# FILE: CUCM\CiscoDRFLocal\running.feature
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


	Scenario: Start "Cisco DRF Local" service
	When we submit a request to start "Cisco DRF Local" service
	And the "Cisco DRF Local" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco DRF Local" service should be "STARTED"

	Scenario: Stop "Cisco DRF Local" service
	When we submit a request to stop "Cisco DRF Local" service
	And the "Cisco DRF Local" service is "started"
	Then we should receive "STOPPED" message
	And the status of "Cisco DRF Local" service should be "STOPPED"

	Scenario: Restart "Cisco DRF Local" service
	When we submit a request to restart "Cisco DRF Local" service
	And the "Cisco DRF Local" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "Cisco DRF Local" service should be "STARTED"
	And the up time of "Cisco DRF Local" service should be less than 1 minute

	Scenario: Restart "Cisco DRF Local" service that is stopped
	When we submit a request to restart "Cisco DRF Local" service
	And the "Cisco DRF Local" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco DRF Local" service should be "STARTED"
	And the up time of "Cisco DRF Local" service should be less than 1 minute

	Scenario: Start "Cisco DRF Local" service that is already started
	When we submit a request to start "Cisco DRF Local" service
	And the "Cisco DRF Local" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "Cisco DRF Local" service should be "STARTED"

	Scenario: Stop "Cisco DRF Local" service that is already stopped
	When we submit a request to stop "Cisco DRF Local" service
	And the "Cisco DRF Local" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "Cisco DRF Local" service should be "STOPPED"