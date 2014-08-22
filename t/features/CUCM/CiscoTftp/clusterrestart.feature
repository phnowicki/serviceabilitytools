#===============================================================================
#
# FILE: CUCM\CiscoTftp\running.feature
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
Given A cluster of servers running Cisco CUCM version "any" is accessible
And the following user credentials
	| username  | password |
	| adminuser | foobar   |


	Scenario: cluster Restart "Cisco Tftp" service on any server where it is already running in the cluster
	When we submit a request to clusterrestart "Cisco Tftp" service
	Then we should receive "RESTARTED" message
	And the status of "Cisco Tftp" service on the servers where it is running should be "STARTED"
	And the up time of the "Cisco Tftp" service on those servers should be less than 1 minute

	Scenario: Cluster Restart "Cisco Tftp" service when there are no servers in the cluster running "Cisco Tftp"
	When we submit a request to clusterrestart "Cisco Tftp" service
	And no servers in the cluster are running "Cisco Tftp"
	Then we should receive "NO SERVERS TO RESTART" message
	And the status of "Cisco Tftp" service on all servers in the cluster should be "STOPPED"