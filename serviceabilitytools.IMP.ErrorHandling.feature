#===============================================================================
#
# FILE: serviceabilitytools.IMP.ErrorHandling.feature
#
#
# AUTHOR: Patrick Nowicki (patrick.nowicki@cdw.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: 08/15/2014 12:12:00
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


Scenario: Check status on invalid service blackSunshine
When we submit a request for status of blackSunshine
Then we should receive a "INVALID SERVICE" response

Scenario: Restart invalid service blackSunshine
When we submit a request to restart blackSunshine service
Then we should receive a "INVALID SERVICE" response

Scenario: Stop invalid service blackSunshine
When we submit a request to stop blackSunshine service
Then we should receive a "INVALID SERVICE" response

Scenario: Start invalid service blackSunshine
When we submit a request to start blackSunshine service
Then we should receive a "INVALID SERVICE" response

Scenario: Activate invalid service blackSunshine
When we submit a request to activate blackSunshine service
Then we should receive a "INVALID SERVICE" response

Scenario: Deactivate invalid service blackSunshine
When we submit a request to deactivate blackSunshine service
Then we should receive a "INVALID SERVICE" response