#===============================================================================
#
# FILE: servicabilitytools.IMP.Cisco RTMT Reporter Servlet.running.feature
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


	Scenario: Start "Cisco RTMT Reporter Servlet" service
	When we submit a request to start "Cisco RTMT Reporter Servlet" service
	And the "Cisco RTMT Reporter Servlet" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco RTMT Reporter Servlet" service should be "STARTED"

	Scenario: Stop "Cisco RTMT Reporter Servlet" service
	When we submit a request to stop "Cisco RTMT Reporter Servlet" service
	And the "Cisco RTMT Reporter Servlet" service is "started"
	Then we should receive "STOPPED" message
	And the status of "Cisco RTMT Reporter Servlet" service should be "STOPPED"

	Scenario: Restart "Cisco RTMT Reporter Servlet" service
	When we submit a request to restart "Cisco RTMT Reporter Servlet" service
	And the "Cisco RTMT Reporter Servlet" service is "started"
	Then we should receive "RESTARTED" message
	And the status of "Cisco RTMT Reporter Servlet" service should be "STARTED"
	And the up time of "Cisco RTMT Reporter Servlet" service should be less than 1 minute

	Scenario: Restart "Cisco RTMT Reporter Servlet" service that is stopped
	When we submit a request to restart "Cisco RTMT Reporter Servlet" service
	And the "Cisco RTMT Reporter Servlet" service is "stopped"
	Then we should receive "STARTED" message
	And the status of "Cisco RTMT Reporter Servlet" service should be "STARTED"
	And the up time of "Cisco RTMT Reporter Servlet" service should be less than 1 minute

	Scenario: Start "Cisco RTMT Reporter Servlet" service that is already started
	When we submit a request to start "Cisco RTMT Reporter Servlet" service
	And the "Cisco RTMT Reporter Servlet" service is "started"
	Then we should receive "ALREADY STARTED" message
	And the status of "Cisco RTMT Reporter Servlet" service should be "STARTED"

	Scenario: Stop "Cisco RTMT Reporter Servlet" service that is already stopped
	When we submit a request to stop "Cisco RTMT Reporter Servlet" service
	And the "Cisco RTMT Reporter Servlet" service is "stopped"
	Then we should receive "ALREADY STOPPED" message
	And the status of "Cisco RTMT Reporter Servlet" service should be "STOPPED"