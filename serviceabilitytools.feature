#===============================================================================
#
# FILE: serviceabilitytools.feature
#
# DESCRIPTION: Feature tests for BDD, heavily based on
# https://github.com/tudorconstantin/Mojolicious-Boilerplate
#
# AUTHOR: Patrick Nowicki (patrick.nowicki@cdw.com),
# COMPANY: CDW
# VERSION: 1.0
# CREATED: 08/14/2014 00:53:00
# REVISION: 2
#===============================================================================

Feature: Serviceability Tools Application Testing
As a Cisco Communications Engineer and developer
I want to test my application
In order to be able to easily test updates to code
And to regression test the many possible versions of server software


############################### Cisco Call Manager ############################################################

Background:
Given A server running Cisco Call Manager version "any" is accessible
And the following user credentials
	| username  | password |
	| adminuser | foobar   |

################################ Valid input -- Status Running Services

Scenario: Check the status of a stopped "Cisco CallManager" service
When we submit a request for the status of the "Cisco CallManager" service
And the "Cisco CallManager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CallManager" service
When we submit a request for the status of the "Cisco CallManager" service
And the "Cisco CallManager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CallManager" service
When we submit a request for the status of the "Cisco CallManager" service
And the "Cisco CallManager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Unified Mobile Voice Access Service" service
When we submit a request for the status of the "Cisco Unified Mobile Voice Access Service" service
And the "Cisco Unified Mobile Voice Access Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Unified Mobile Voice Access Service" service
When we submit a request for the status of the "Cisco Unified Mobile Voice Access Service" service
And the "Cisco Unified Mobile Voice Access Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Unified Mobile Voice Access Service" service
When we submit a request for the status of the "Cisco Unified Mobile Voice Access Service" service
And the "Cisco Unified Mobile Voice Access Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco IP Voice Media Streaming App" service
When we submit a request for the status of the "Cisco IP Voice Media Streaming App" service
And the "Cisco IP Voice Media Streaming App" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco IP Voice Media Streaming App" service
When we submit a request for the status of the "Cisco IP Voice Media Streaming App" service
And the "Cisco IP Voice Media Streaming App" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco IP Voice Media Streaming App" service
When we submit a request for the status of the "Cisco IP Voice Media Streaming App" service
And the "Cisco IP Voice Media Streaming App" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CTI Manager" service
When we submit a request for the status of the "Cisco CTI Manager" service
And the "Cisco CTI Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CTI Manager" service
When we submit a request for the status of the "Cisco CTI Manager" service
And the "Cisco CTI Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CTI Manager" service
When we submit a request for the status of the "Cisco CTI Manager" service
And the "Cisco CTI Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Extension Mobility" service
When we submit a request for the status of the "Cisco Extension Mobility" service
And the "Cisco Extension Mobility" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Extension Mobility" service
When we submit a request for the status of the "Cisco Extension Mobility" service
And the "Cisco Extension Mobility" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Extension Mobility" service
When we submit a request for the status of the "Cisco Extension Mobility" service
And the "Cisco Extension Mobility" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Extended Functions" service
When we submit a request for the status of the "Cisco Extended Functions" service
And the "Cisco Extended Functions" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Extended Functions" service
When we submit a request for the status of the "Cisco Extended Functions" service
And the "Cisco Extended Functions" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Extended Functions" service
When we submit a request for the status of the "Cisco Extended Functions" service
And the "Cisco Extended Functions" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco DHCP Monitor Service" service
When we submit a request for the status of the "Cisco DHCP Monitor Service" service
And the "Cisco DHCP Monitor Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco DHCP Monitor Service" service
When we submit a request for the status of the "Cisco DHCP Monitor Service" service
And the "Cisco DHCP Monitor Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco DHCP Monitor Service" service
When we submit a request for the status of the "Cisco DHCP Monitor Service" service
And the "Cisco DHCP Monitor Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Dialed Number Analyzer Server" service
When we submit a request for the status of the "Cisco Dialed Number Analyzer Server" service
And the "Cisco Dialed Number Analyzer Server" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Dialed Number Analyzer Server" service
When we submit a request for the status of the "Cisco Dialed Number Analyzer Server" service
And the "Cisco Dialed Number Analyzer Server" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Dialed Number Analyzer Server" service
When we submit a request for the status of the "Cisco Dialed Number Analyzer Server" service
And the "Cisco Dialed Number Analyzer Server" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Dial Number Analyzer" service
When we submit a request for the status of the "Cisco Dial Number Analyzer" service
And the "Cisco Dial Number Analyzer" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Dial Number Analyzer" service
When we submit a request for the status of the "Cisco Dial Number Analyzer" service
And the "Cisco Dial Number Analyzer" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Dial Number Analyzer" service
When we submit a request for the status of the "Cisco Dial Number Analyzer" service
And the "Cisco Dial Number Analyzer" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Tftp" service
When we submit a request for the status of the "Cisco Tftp" service
And the "Cisco Tftp" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Tftp" service
When we submit a request for the status of the "Cisco Tftp" service
And the "Cisco Tftp" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Tftp" service
When we submit a request for the status of the "Cisco Tftp" service
And the "Cisco Tftp" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco IP Manager Assisistant" service
When we submit a request for the status of the "Cisco IP Manager Assisistant" service
And the "Cisco IP Manager Assisistant" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco IP Manager Assisistant" service
When we submit a request for the status of the "Cisco IP Manager Assisistant" service
And the "Cisco IP Manager Assisistant" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco IP Manager Assisistant" service
When we submit a request for the status of the "Cisco IP Manager Assisistant" service
And the "Cisco IP Manager Assisistant" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco WebDialer Web Service" service
When we submit a request for the status of the "Cisco WebDialer Web Service" service
And the "Cisco WebDialer Web Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco WebDialer Web Service" service
When we submit a request for the status of the "Cisco WebDialer Web Service" service
And the "Cisco WebDialer Web Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco WebDialer Web Service" service
When we submit a request for the status of the "Cisco WebDialer Web Service" service
And the "Cisco WebDialer Web Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco SOAP - CDRonDemand Service" service
When we submit a request for the status of the "Cisco SOAP - CDRonDemand Service" service
And the "Cisco SOAP - CDRonDemand Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco SOAP - CDRonDemand Service" service
When we submit a request for the status of the "Cisco SOAP - CDRonDemand Service" service
And the "Cisco SOAP - CDRonDemand Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco SOAP - CDRonDemand Service" service
When we submit a request for the status of the "Cisco SOAP - CDRonDemand Service" service
And the "Cisco SOAP - CDRonDemand Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CAR Web Service" service
When we submit a request for the status of the "Cisco CAR Web Service" service
And the "Cisco CAR Web Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CAR Web Service" service
When we submit a request for the status of the "Cisco CAR Web Service" service
And the "Cisco CAR Web Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CAR Web Service" service
When we submit a request for the status of the "Cisco CAR Web Service" service
And the "Cisco CAR Web Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco AXL Web Service" service
When we submit a request for the status of the "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco AXL Web Service" service
When we submit a request for the status of the "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco AXL Web Service" service
When we submit a request for the status of the "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco UXL Web Service" service
When we submit a request for the status of the "Cisco UXL Web Service" service
And the "Cisco UXL Web Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco UXL Web Service" service
When we submit a request for the status of the "Cisco UXL Web Service" service
And the "Cisco UXL Web Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco UXL Web Service" service
When we submit a request for the status of the "Cisco UXL Web Service" service
And the "Cisco UXL Web Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Bulk Provisioning Service" service
When we submit a request for the status of the "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Bulk Provisioning Service" service
When we submit a request for the status of the "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Bulk Provisioning Service" service
When we submit a request for the status of the "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco TAPS Service" service
When we submit a request for the status of the "Cisco TAPS Service" service
And the "Cisco TAPS Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco TAPS Service" service
When we submit a request for the status of the "Cisco TAPS Service" service
And the "Cisco TAPS Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco TAPS Service" service
When we submit a request for the status of the "Cisco TAPS Service" service
And the "Cisco TAPS Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Serviceability Reporter" service
When we submit a request for the status of the "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Serviceability Reporter" service
When we submit a request for the status of the "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Serviceability Reporter" service
When we submit a request for the status of the "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CallManager SNMP Service" service
When we submit a request for the status of the "Cisco CallManager SNMP Service" service
And the "Cisco CallManager SNMP Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CallManager SNMP Service" service
When we submit a request for the status of the "Cisco CallManager SNMP Service" service
And the "Cisco CallManager SNMP Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CallManager SNMP Service" service
When we submit a request for the status of the "Cisco CallManager SNMP Service" service
And the "Cisco CallManager SNMP Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CTL Provider" service
When we submit a request for the status of the "Cisco CTL Provider" service
And the "Cisco CTL Provider" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CTL Provider" service
When we submit a request for the status of the "Cisco CTL Provider" service
And the "Cisco CTL Provider" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CTL Provider" service
When we submit a request for the status of the "Cisco CTL Provider" service
And the "Cisco CTL Provider" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Certificate Authority Proxy Function" service
When we submit a request for the status of the "Cisco Certificate Authority Proxy Function" service
And the "Cisco Certificate Authority Proxy Function" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Certificate Authority Proxy Function" service
When we submit a request for the status of the "Cisco Certificate Authority Proxy Function" service
And the "Cisco Certificate Authority Proxy Function" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Certificate Authority Proxy Function" service
When we submit a request for the status of the "Cisco Certificate Authority Proxy Function" service
And the "Cisco Certificate Authority Proxy Function" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco DirSync" service
When we submit a request for the status of the "Cisco DirSync" service
And the "Cisco DirSync" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco DirSync" service
When we submit a request for the status of the "Cisco DirSync" service
And the "Cisco DirSync" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco DirSync" service
When we submit a request for the status of the "Cisco DirSync" service
And the "Cisco DirSync" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Intercluster Lookup Service" service
When we submit a request for the status of the "Cisco Intercluster Lookup Service" service
And the "Cisco Intercluster Lookup Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Intercluster Lookup Service" service
When we submit a request for the status of the "Cisco Intercluster Lookup Service" service
And the "Cisco Intercluster Lookup Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Intercluster Lookup Service" service
When we submit a request for the status of the "Cisco Intercluster Lookup Service" service
And the "Cisco Intercluster Lookup Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Location Bandwidth Manager" service
When we submit a request for the status of the "Cisco Location Bandwidth Manager" service
And the "Cisco Location Bandwidth Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Location Bandwidth Manager" service
When we submit a request for the status of the "Cisco Location Bandwidth Manager" service
And the "Cisco Location Bandwidth Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Location Bandwidth Manager" service
When we submit a request for the status of the "Cisco Location Bandwidth Manager" service
And the "Cisco Location Bandwidth Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Directory Number Alias Sync" service
When we submit a request for the status of the "Cisco Directory Number Alias Sync" service
And the "Cisco Directory Number Alias Sync" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Directory Number Alias Sync" service
When we submit a request for the status of the "Cisco Directory Number Alias Sync" service
And the "Cisco Directory Number Alias Sync" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Directory Number Alias Sync" service
When we submit a request for the status of the "Cisco Directory Number Alias Sync" service
And the "Cisco Directory Number Alias Sync" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Directory Number Alias Lookup" service
When we submit a request for the status of the "Cisco Directory Number Alias Lookup" service
And the "Cisco Directory Number Alias Lookup" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Directory Number Alias Lookup" service
When we submit a request for the status of the "Cisco Directory Number Alias Lookup" service
And the "Cisco Directory Number Alias Lookup" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Directory Number Alias Lookup" service
When we submit a request for the status of the "Cisco Directory Number Alias Lookup" service
And the "Cisco Directory Number Alias Lookup" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Self Provisioning IVR" service
When we submit a request for the status of the "Self Provisioning IVR" service
And the "Self Provisioning IVR" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Self Provisioning IVR" service
When we submit a request for the status of the "Self Provisioning IVR" service
And the "Self Provisioning IVR" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Self Provisioning IVR" service
When we submit a request for the status of the "Self Provisioning IVR" service
And the "Self Provisioning IVR" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CallManager Serviceability RTMT" service
When we submit a request for the status of the "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CallManager Serviceability RTMT" service
When we submit a request for the status of the "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CallManager Serviceability RTMT" service
When we submit a request for the status of the "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco RTMT Reporter Servlet" service
When we submit a request for the status of the "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco RTMT Reporter Servlet" service
When we submit a request for the status of the "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco RTMT Reporter Servlet" service
When we submit a request for the status of the "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Log Partition Monitoring Tool" service
When we submit a request for the status of the "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Log Partition Monitoring Tool" service
When we submit a request for the status of the "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Log Partition Monitoring Tool" service
When we submit a request for the status of the "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Tomcat Stats Servlet" service
When we submit a request for the status of the "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Tomcat Stats Servlet" service
When we submit a request for the status of the "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Tomcat Stats Servlet" service
When we submit a request for the status of the "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco RIS Data Collector" service
When we submit a request for the status of the "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco RIS Data Collector" service
When we submit a request for the status of the "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco RIS Data Collector" service
When we submit a request for the status of the "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco AMC Service" service
When we submit a request for the status of the "Cisco AMC Service" service
And the "Cisco AMC Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco AMC Service" service
When we submit a request for the status of the "Cisco AMC Service" service
And the "Cisco AMC Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco AMC Service" service
When we submit a request for the status of the "Cisco AMC Service" service
And the "Cisco AMC Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Audit Event Service" service
When we submit a request for the status of the "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Audit Event Service" service
When we submit a request for the status of the "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Audit Event Service" service
When we submit a request for the status of the "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Platform Administrative Web Service" service
When we submit a request for the status of the "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Platform Administrative Web Service" service
When we submit a request for the status of the "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Platform Administrative Web Service" service
When we submit a request for the status of the "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "A Cisco DB" service
When we submit a request for the status of the "A Cisco DB" service
And the "A Cisco DB" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "A Cisco DB" service
When we submit a request for the status of the "A Cisco DB" service
And the "A Cisco DB" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "A Cisco DB" service
When we submit a request for the status of the "A Cisco DB" service
And the "A Cisco DB" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "A Cisco DB Replicator" service
When we submit a request for the status of the "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "A Cisco DB Replicator" service
When we submit a request for the status of the "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "A Cisco DB Replicator" service
When we submit a request for the status of the "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "SNMP Master Agent" service
When we submit a request for the status of the "SNMP Master Agent" service
And the "SNMP Master Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "SNMP Master Agent" service
When we submit a request for the status of the "SNMP Master Agent" service
And the "SNMP Master Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "SNMP Master Agent" service
When we submit a request for the status of the "SNMP Master Agent" service
And the "SNMP Master Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "MIB2 Agent" service
When we submit a request for the status of the "MIB2 Agent" service
And the "MIB2 Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "MIB2 Agent" service
When we submit a request for the status of the "MIB2 Agent" service
And the "MIB2 Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "MIB2 Agent" service
When we submit a request for the status of the "MIB2 Agent" service
And the "MIB2 Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Host Resources Agent" service
When we submit a request for the status of the "Host Resources Agent" service
And the "Host Resources Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Host Resources Agent" service
When we submit a request for the status of the "Host Resources Agent" service
And the "Host Resources Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Host Resources Agent" service
When we submit a request for the status of the "Host Resources Agent" service
And the "Host Resources Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "System Application Agent" service
When we submit a request for the status of the "System Application Agent" service
And the "System Application Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "System Application Agent" service
When we submit a request for the status of the "System Application Agent" service
And the "System Application Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "System Application Agent" service
When we submit a request for the status of the "System Application Agent" service
And the "System Application Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CDP Agent" service
When we submit a request for the status of the "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CDP Agent" service
When we submit a request for the status of the "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CDP Agent" service
When we submit a request for the status of the "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Syslog Agent" service
When we submit a request for the status of the "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Syslog Agent" service
When we submit a request for the status of the "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Syslog Agent" service
When we submit a request for the status of the "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Certificate Expiry Monitor" service
When we submit a request for the status of the "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Certificate Expiry Monitor" service
When we submit a request for the status of the "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Certificate Expiry Monitor" service
When we submit a request for the status of the "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Certificate Change Notification" service
When we submit a request for the status of the "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Certificate Change Notification" service
When we submit a request for the status of the "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Certificate Change Notification" service
When we submit a request for the status of the "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco ELM Client Service" service
When we submit a request for the status of the "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco ELM Client Service" service
When we submit a request for the status of the "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco ELM Client Service" service
When we submit a request for the status of the "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Tomcat" service
When we submit a request for the status of the "Cisco Tomcat" service
And the "Cisco Tomcat" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Tomcat" service
When we submit a request for the status of the "Cisco Tomcat" service
And the "Cisco Tomcat" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Tomcat" service
When we submit a request for the status of the "Cisco Tomcat" service
And the "Cisco Tomcat" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco License Manager" service
When we submit a request for the status of the "Cisco License Manager" service
And the "Cisco License Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco License Manager" service
When we submit a request for the status of the "Cisco License Manager" service
And the "Cisco License Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco License Manager" service
When we submit a request for the status of the "Cisco License Manager" service
And the "Cisco License Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CallManager Serviceability" service
When we submit a request for the status of the "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CallManager Serviceability" service
When we submit a request for the status of the "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CallManager Serviceability" service
When we submit a request for the status of the "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CDP" service
When we submit a request for the status of the "Cisco CDP" service
And the "Cisco CDP" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CDP" service
When we submit a request for the status of the "Cisco CDP" service
And the "Cisco CDP" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CDP" service
When we submit a request for the status of the "Cisco CDP" service
And the "Cisco CDP" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Trace Collection Servlet" service
When we submit a request for the status of the "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Trace Collection Servlet" service
When we submit a request for the status of the "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Trace Collection Servlet" service
When we submit a request for the status of the "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Trace Collection Service" service
When we submit a request for the status of the "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Trace Collection Service" service
When we submit a request for the status of the "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Trace Collection Service" service
When we submit a request for the status of the "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Database Layer Monitor" service
When we submit a request for the status of the "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Database Layer Monitor" service
When we submit a request for the status of the "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Database Layer Monitor" service
When we submit a request for the status of the "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CallManager Admin" service
When we submit a request for the status of the "Cisco CallManager Admin" service
And the "Cisco CallManager Admin" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CallManager Admin" service
When we submit a request for the status of the "Cisco CallManager Admin" service
And the "Cisco CallManager Admin" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CallManager Admin" service
When we submit a request for the status of the "Cisco CallManager Admin" service
And the "Cisco CallManager Admin" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "SOAP -Real-Time Service APIs" service
When we submit a request for the status of the "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "SOAP -Real-Time Service APIs" service
When we submit a request for the status of the "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "SOAP -Real-Time Service APIs" service
When we submit a request for the status of the "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "SOAP -Performance Monitoring APIs" service
When we submit a request for the status of the "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "SOAP -Performance Monitoring APIs" service
When we submit a request for the status of the "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "SOAP -Performance Monitoring APIs" service
When we submit a request for the status of the "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "SOAP -Log Collection APIs" service
When we submit a request for the status of the "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "SOAP -Log Collection APIs" service
When we submit a request for the status of the "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "SOAP -Log Collection APIs" service
When we submit a request for the status of the "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "SOAP - Diagnostic Portal Database Service" service
When we submit a request for the status of the "SOAP - Diagnostic Portal Database Service" service
And the "SOAP - Diagnostic Portal Database Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "SOAP - Diagnostic Portal Database Service" service
When we submit a request for the status of the "SOAP - Diagnostic Portal Database Service" service
And the "SOAP - Diagnostic Portal Database Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "SOAP - Diagnostic Portal Database Service" service
When we submit a request for the status of the "SOAP - Diagnostic Portal Database Service" service
And the "SOAP - Diagnostic Portal Database Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco DRF Local" service
When we submit a request for the status of the "Cisco DRF Local" service
And the "Cisco DRF Local" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco DRF Local" service
When we submit a request for the status of the "Cisco DRF Local" service
And the "Cisco DRF Local" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco DRF Local" service
When we submit a request for the status of the "Cisco DRF Local" service
And the "Cisco DRF Local" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco DRF Master" service
When we submit a request for the status of the "Cisco DRF Master" service
And the "Cisco DRF Master" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco DRF Master" service
When we submit a request for the status of the "Cisco DRF Master" service
And the "Cisco DRF Master" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco DRF Master" service
When we submit a request for the status of the "Cisco DRF Master" service
And the "Cisco DRF Master" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CallManager Personal Directory" service
When we submit a request for the status of the "Cisco CallManager Personal Directory" service
And the "Cisco CallManager Personal Directory" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CallManager Personal Directory" service
When we submit a request for the status of the "Cisco CallManager Personal Directory" service
And the "Cisco CallManager Personal Directory" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CallManager Personal Directory" service
When we submit a request for the status of the "Cisco CallManager Personal Directory" service
And the "Cisco CallManager Personal Directory" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Extension Mobility Application" service
When we submit a request for the status of the "Cisco Extension Mobility Application" service
And the "Cisco Extension Mobility Application" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Extension Mobility Application" service
When we submit a request for the status of the "Cisco Extension Mobility Application" service
And the "Cisco Extension Mobility Application" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Extension Mobility Application" service
When we submit a request for the status of the "Cisco Extension Mobility Application" service
And the "Cisco Extension Mobility Application" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CallManager Cisco IP Phone Services" service
When we submit a request for the status of the "Cisco CallManager Cisco IP Phone Services" service
And the "Cisco CallManager Cisco IP Phone Services" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CallManager Cisco IP Phone Services" service
When we submit a request for the status of the "Cisco CallManager Cisco IP Phone Services" service
And the "Cisco CallManager Cisco IP Phone Services" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CallManager Cisco IP Phone Services" service
When we submit a request for the status of the "Cisco CallManager Cisco IP Phone Services" service
And the "Cisco CallManager Cisco IP Phone Services" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco User Data Services" service
When we submit a request for the status of the "Cisco User Data Services" service
And the "Cisco User Data Services" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco User Data Services" service
When we submit a request for the status of the "Cisco User Data Services" service
And the "Cisco User Data Services" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco User Data Services" service
When we submit a request for the status of the "Cisco User Data Services" service
And the "Cisco User Data Services" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Change Credential Application" service
When we submit a request for the status of the "Cisco Change Credential Application" service
And the "Cisco Change Credential Application" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Change Credential Application" service
When we submit a request for the status of the "Cisco Change Credential Application" service
And the "Cisco Change Credential Application" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Change Credential Application" service
When we submit a request for the status of the "Cisco Change Credential Application" service
And the "Cisco Change Credential Application" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco E911" service
When we submit a request for the status of the "Cisco E911" service
And the "Cisco E911" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco E911" service
When we submit a request for the status of the "Cisco E911" service
And the "Cisco E911" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco E911" service
When we submit a request for the status of the "Cisco E911" service
And the "Cisco E911" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CDR Repository Manager" service
When we submit a request for the status of the "Cisco CDR Repository Manager" service
And the "Cisco CDR Repository Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CDR Repository Manager" service
When we submit a request for the status of the "Cisco CDR Repository Manager" service
And the "Cisco CDR Repository Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CDR Repository Manager" service
When we submit a request for the status of the "Cisco CDR Repository Manager" service
And the "Cisco CDR Repository Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CDR Agent" service
When we submit a request for the status of the "Cisco CDR Agent" service
And the "Cisco CDR Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CDR Agent" service
When we submit a request for the status of the "Cisco CDR Agent" service
And the "Cisco CDR Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CDR Agent" service
When we submit a request for the status of the "Cisco CDR Agent" service
And the "Cisco CDR Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CAR Scheduler" service
When we submit a request for the status of the "Cisco CAR Scheduler" service
And the "Cisco CAR Scheduler" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CAR Scheduler" service
When we submit a request for the status of the "Cisco CAR Scheduler" service
And the "Cisco CAR Scheduler" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CAR Scheduler" service
When we submit a request for the status of the "Cisco CAR Scheduler" service
And the "Cisco CAR Scheduler" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco SOAP - CallRecord Service" service
When we submit a request for the status of the "Cisco SOAP - CallRecord Service" service
And the "Cisco SOAP - CallRecord Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco SOAP - CallRecord Service" service
When we submit a request for the status of the "Cisco SOAP - CallRecord Service" service
And the "Cisco SOAP - CallRecord Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco SOAP - CallRecord Service" service
When we submit a request for the status of the "Cisco SOAP - CallRecord Service" service
And the "Cisco SOAP - CallRecord Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CAR DB" service
When we submit a request for the status of the "Cisco CAR DB" service
And the "Cisco CAR DB" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CAR DB" service
When we submit a request for the status of the "Cisco CAR DB" service
And the "Cisco CAR DB" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CAR DB" service
When we submit a request for the status of the "Cisco CAR DB" service
And the "Cisco CAR DB" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Trust Verification Service" service
When we submit a request for the status of the "Cisco Trust Verification Service" service
And the "Cisco Trust Verification Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Trust Verification Service" service
When we submit a request for the status of the "Cisco Trust Verification Service" service
And the "Cisco Trust Verification Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Trust Verification Service" service
When we submit a request for the status of the "Cisco Trust Verification Service" service
And the "Cisco Trust Verification Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

################################ Valid input -- Stop/Start/Restart

Scenario: Start "Cisco CallManager" service
When we submit a request to start "Cisco CallManager" service
And the "Cisco CallManager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CallManager" service should be "STARTED"

Scenario: Stop "Cisco CallManager" service
When we submit a request to start "Cisco CallManager" service
And the "Cisco CallManager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CallManager" service should be "STOPPED"

Scenario: Restart "Cisco CallManager" service
When we submit a request to restart "Cisco CallManager" service
And the "Cisco CallManager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CallManager" service should be "STARTED"
And the up time of "Cisco CallManager" service should be less than 1 minute

Scenario: Start "Cisco Unified Mobile Voice Access Service" service
When we submit a request to start "Cisco Unified Mobile Voice Access Service" service
And the "Cisco Unified Mobile Voice Access Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Unified Mobile Voice Access Service" service should be "STARTED"

Scenario: Stop "Cisco Unified Mobile Voice Access Service" service
When we submit a request to start "Cisco Unified Mobile Voice Access Service" service
And the "Cisco Unified Mobile Voice Access Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Unified Mobile Voice Access Service" service should be "STOPPED"

Scenario: Restart "Cisco Unified Mobile Voice Access Service" service
When we submit a request to restart "Cisco Unified Mobile Voice Access Service" service
And the "Cisco Unified Mobile Voice Access Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Unified Mobile Voice Access Service" service should be "STARTED"
And the up time of "Cisco Unified Mobile Voice Access Service" service should be less than 1 minute

Scenario: Start "Cisco IP Voice Media Streaming App" service
When we submit a request to start "Cisco IP Voice Media Streaming App" service
And the "Cisco IP Voice Media Streaming App" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco IP Voice Media Streaming App" service should be "STARTED"

Scenario: Stop "Cisco IP Voice Media Streaming App" service
When we submit a request to start "Cisco IP Voice Media Streaming App" service
And the "Cisco IP Voice Media Streaming App" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco IP Voice Media Streaming App" service should be "STOPPED"

Scenario: Restart "Cisco IP Voice Media Streaming App" service
When we submit a request to restart "Cisco IP Voice Media Streaming App" service
And the "Cisco IP Voice Media Streaming App" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco IP Voice Media Streaming App" service should be "STARTED"
And the up time of "Cisco IP Voice Media Streaming App" service should be less than 1 minute

Scenario: Start "Cisco CTI Manager" service
When we submit a request to start "Cisco CTI Manager" service
And the "Cisco CTI Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CTI Manager" service should be "STARTED"

Scenario: Stop "Cisco CTI Manager" service
When we submit a request to start "Cisco CTI Manager" service
And the "Cisco CTI Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CTI Manager" service should be "STOPPED"

Scenario: Restart "Cisco CTI Manager" service
When we submit a request to restart "Cisco CTI Manager" service
And the "Cisco CTI Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CTI Manager" service should be "STARTED"
And the up time of "Cisco CTI Manager" service should be less than 1 minute

Scenario: Start "Cisco Extension Mobility" service
When we submit a request to start "Cisco Extension Mobility" service
And the "Cisco Extension Mobility" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Extension Mobility" service should be "STARTED"

Scenario: Stop "Cisco Extension Mobility" service
When we submit a request to start "Cisco Extension Mobility" service
And the "Cisco Extension Mobility" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Extension Mobility" service should be "STOPPED"

Scenario: Restart "Cisco Extension Mobility" service
When we submit a request to restart "Cisco Extension Mobility" service
And the "Cisco Extension Mobility" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Extension Mobility" service should be "STARTED"
And the up time of "Cisco Extension Mobility" service should be less than 1 minute

Scenario: Start "Cisco Extended Functions" service
When we submit a request to start "Cisco Extended Functions" service
And the "Cisco Extended Functions" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Extended Functions" service should be "STARTED"

Scenario: Stop "Cisco Extended Functions" service
When we submit a request to start "Cisco Extended Functions" service
And the "Cisco Extended Functions" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Extended Functions" service should be "STOPPED"

Scenario: Restart "Cisco Extended Functions" service
When we submit a request to restart "Cisco Extended Functions" service
And the "Cisco Extended Functions" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Extended Functions" service should be "STARTED"
And the up time of "Cisco Extended Functions" service should be less than 1 minute

Scenario: Start "Cisco DHCP Monitor Service" service
When we submit a request to start "Cisco DHCP Monitor Service" service
And the "Cisco DHCP Monitor Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco DHCP Monitor Service" service should be "STARTED"

Scenario: Stop "Cisco DHCP Monitor Service" service
When we submit a request to start "Cisco DHCP Monitor Service" service
And the "Cisco DHCP Monitor Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco DHCP Monitor Service" service should be "STOPPED"

Scenario: Restart "Cisco DHCP Monitor Service" service
When we submit a request to restart "Cisco DHCP Monitor Service" service
And the "Cisco DHCP Monitor Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco DHCP Monitor Service" service should be "STARTED"
And the up time of "Cisco DHCP Monitor Service" service should be less than 1 minute

Scenario: Start "Cisco Dialed Number Analyzer Server" service
When we submit a request to start "Cisco Dialed Number Analyzer Server" service
And the "Cisco Dialed Number Analyzer Server" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Dialed Number Analyzer Server" service should be "STARTED"

Scenario: Stop "Cisco Dialed Number Analyzer Server" service
When we submit a request to start "Cisco Dialed Number Analyzer Server" service
And the "Cisco Dialed Number Analyzer Server" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Dialed Number Analyzer Server" service should be "STOPPED"

Scenario: Restart "Cisco Dialed Number Analyzer Server" service
When we submit a request to restart "Cisco Dialed Number Analyzer Server" service
And the "Cisco Dialed Number Analyzer Server" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Dialed Number Analyzer Server" service should be "STARTED"
And the up time of "Cisco Dialed Number Analyzer Server" service should be less than 1 minute

Scenario: Start "Cisco Dial Number Analyzer" service
When we submit a request to start "Cisco Dial Number Analyzer" service
And the "Cisco Dial Number Analyzer" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Dial Number Analyzer" service should be "STARTED"

Scenario: Stop "Cisco Dial Number Analyzer" service
When we submit a request to start "Cisco Dial Number Analyzer" service
And the "Cisco Dial Number Analyzer" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Dial Number Analyzer" service should be "STOPPED"

Scenario: Restart "Cisco Dial Number Analyzer" service
When we submit a request to restart "Cisco Dial Number Analyzer" service
And the "Cisco Dial Number Analyzer" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Dial Number Analyzer" service should be "STARTED"
And the up time of "Cisco Dial Number Analyzer" service should be less than 1 minute

Scenario: Start "Cisco Tftp" service
When we submit a request to start "Cisco Tftp" service
And the "Cisco Tftp" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Tftp" service should be "STARTED"

Scenario: Stop "Cisco Tftp" service
When we submit a request to start "Cisco Tftp" service
And the "Cisco Tftp" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Tftp" service should be "STOPPED"

Scenario: Restart "Cisco Tftp" service
When we submit a request to restart "Cisco Tftp" service
And the "Cisco Tftp" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Tftp" service should be "STARTED"
And the up time of "Cisco Tftp" service should be less than 1 minute

Scenario: Start "Cisco IP Manager Assisistant" service
When we submit a request to start "Cisco IP Manager Assisistant" service
And the "Cisco IP Manager Assisistant" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco IP Manager Assisistant" service should be "STARTED"

Scenario: Stop "Cisco IP Manager Assisistant" service
When we submit a request to start "Cisco IP Manager Assisistant" service
And the "Cisco IP Manager Assisistant" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco IP Manager Assisistant" service should be "STOPPED"

Scenario: Restart "Cisco IP Manager Assisistant" service
When we submit a request to restart "Cisco IP Manager Assisistant" service
And the "Cisco IP Manager Assisistant" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco IP Manager Assisistant" service should be "STARTED"
And the up time of "Cisco IP Manager Assisistant" service should be less than 1 minute

Scenario: Start "Cisco WebDialer Web Service" service
When we submit a request to start "Cisco WebDialer Web Service" service
And the "Cisco WebDialer Web Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco WebDialer Web Service" service should be "STARTED"

Scenario: Stop "Cisco WebDialer Web Service" service
When we submit a request to start "Cisco WebDialer Web Service" service
And the "Cisco WebDialer Web Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco WebDialer Web Service" service should be "STOPPED"

Scenario: Restart "Cisco WebDialer Web Service" service
When we submit a request to restart "Cisco WebDialer Web Service" service
And the "Cisco WebDialer Web Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco WebDialer Web Service" service should be "STARTED"
And the up time of "Cisco WebDialer Web Service" service should be less than 1 minute

Scenario: Start "Cisco SOAP - CDRonDemand Service" service
When we submit a request to start "Cisco SOAP - CDRonDemand Service" service
And the "Cisco SOAP - CDRonDemand Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco SOAP - CDRonDemand Service" service should be "STARTED"

Scenario: Stop "Cisco SOAP - CDRonDemand Service" service
When we submit a request to start "Cisco SOAP - CDRonDemand Service" service
And the "Cisco SOAP - CDRonDemand Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco SOAP - CDRonDemand Service" service should be "STOPPED"

Scenario: Restart "Cisco SOAP - CDRonDemand Service" service
When we submit a request to restart "Cisco SOAP - CDRonDemand Service" service
And the "Cisco SOAP - CDRonDemand Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco SOAP - CDRonDemand Service" service should be "STARTED"
And the up time of "Cisco SOAP - CDRonDemand Service" service should be less than 1 minute

Scenario: Start "Cisco CAR Web Service" service
When we submit a request to start "Cisco CAR Web Service" service
And the "Cisco CAR Web Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CAR Web Service" service should be "STARTED"

Scenario: Stop "Cisco CAR Web Service" service
When we submit a request to start "Cisco CAR Web Service" service
And the "Cisco CAR Web Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CAR Web Service" service should be "STOPPED"

Scenario: Restart "Cisco CAR Web Service" service
When we submit a request to restart "Cisco CAR Web Service" service
And the "Cisco CAR Web Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CAR Web Service" service should be "STARTED"
And the up time of "Cisco CAR Web Service" service should be less than 1 minute

Scenario: Start "Cisco AXL Web Service" service
When we submit a request to start "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco AXL Web Service" service should be "STARTED"

Scenario: Stop "Cisco AXL Web Service" service
When we submit a request to start "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco AXL Web Service" service should be "STOPPED"

Scenario: Restart "Cisco AXL Web Service" service
When we submit a request to restart "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco AXL Web Service" service should be "STARTED"
And the up time of "Cisco AXL Web Service" service should be less than 1 minute

Scenario: Start "Cisco UXL Web Service" service
When we submit a request to start "Cisco UXL Web Service" service
And the "Cisco UXL Web Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco UXL Web Service" service should be "STARTED"

Scenario: Stop "Cisco UXL Web Service" service
When we submit a request to start "Cisco UXL Web Service" service
And the "Cisco UXL Web Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco UXL Web Service" service should be "STOPPED"

Scenario: Restart "Cisco UXL Web Service" service
When we submit a request to restart "Cisco UXL Web Service" service
And the "Cisco UXL Web Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco UXL Web Service" service should be "STARTED"
And the up time of "Cisco UXL Web Service" service should be less than 1 minute

Scenario: Start "Cisco Bulk Provisioning Service" service
When we submit a request to start "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Bulk Provisioning Service" service should be "STARTED"

Scenario: Stop "Cisco Bulk Provisioning Service" service
When we submit a request to start "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Bulk Provisioning Service" service should be "STOPPED"

Scenario: Restart "Cisco Bulk Provisioning Service" service
When we submit a request to restart "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Bulk Provisioning Service" service should be "STARTED"
And the up time of "Cisco Bulk Provisioning Service" service should be less than 1 minute

Scenario: Start "Cisco TAPS Service" service
When we submit a request to start "Cisco TAPS Service" service
And the "Cisco TAPS Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco TAPS Service" service should be "STARTED"

Scenario: Stop "Cisco TAPS Service" service
When we submit a request to start "Cisco TAPS Service" service
And the "Cisco TAPS Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco TAPS Service" service should be "STOPPED"

Scenario: Restart "Cisco TAPS Service" service
When we submit a request to restart "Cisco TAPS Service" service
And the "Cisco TAPS Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco TAPS Service" service should be "STARTED"
And the up time of "Cisco TAPS Service" service should be less than 1 minute

Scenario: Start "Cisco Serviceability Reporter" service
When we submit a request to start "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Serviceability Reporter" service should be "STARTED"

Scenario: Stop "Cisco Serviceability Reporter" service
When we submit a request to start "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Serviceability Reporter" service should be "STOPPED"

Scenario: Restart "Cisco Serviceability Reporter" service
When we submit a request to restart "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Serviceability Reporter" service should be "STARTED"
And the up time of "Cisco Serviceability Reporter" service should be less than 1 minute

Scenario: Start "Cisco CallManager SNMP Service" service
When we submit a request to start "Cisco CallManager SNMP Service" service
And the "Cisco CallManager SNMP Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CallManager SNMP Service" service should be "STARTED"

Scenario: Stop "Cisco CallManager SNMP Service" service
When we submit a request to start "Cisco CallManager SNMP Service" service
And the "Cisco CallManager SNMP Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CallManager SNMP Service" service should be "STOPPED"

Scenario: Restart "Cisco CallManager SNMP Service" service
When we submit a request to restart "Cisco CallManager SNMP Service" service
And the "Cisco CallManager SNMP Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CallManager SNMP Service" service should be "STARTED"
And the up time of "Cisco CallManager SNMP Service" service should be less than 1 minute

Scenario: Start "Cisco CTL Provider" service
When we submit a request to start "Cisco CTL Provider" service
And the "Cisco CTL Provider" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CTL Provider" service should be "STARTED"

Scenario: Stop "Cisco CTL Provider" service
When we submit a request to start "Cisco CTL Provider" service
And the "Cisco CTL Provider" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CTL Provider" service should be "STOPPED"

Scenario: Restart "Cisco CTL Provider" service
When we submit a request to restart "Cisco CTL Provider" service
And the "Cisco CTL Provider" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CTL Provider" service should be "STARTED"
And the up time of "Cisco CTL Provider" service should be less than 1 minute

Scenario: Start "Cisco Certificate Authority Proxy Function" service
When we submit a request to start "Cisco Certificate Authority Proxy Function" service
And the "Cisco Certificate Authority Proxy Function" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Certificate Authority Proxy Function" service should be "STARTED"

Scenario: Stop "Cisco Certificate Authority Proxy Function" service
When we submit a request to start "Cisco Certificate Authority Proxy Function" service
And the "Cisco Certificate Authority Proxy Function" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Certificate Authority Proxy Function" service should be "STOPPED"

Scenario: Restart "Cisco Certificate Authority Proxy Function" service
When we submit a request to restart "Cisco Certificate Authority Proxy Function" service
And the "Cisco Certificate Authority Proxy Function" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Certificate Authority Proxy Function" service should be "STARTED"
And the up time of "Cisco Certificate Authority Proxy Function" service should be less than 1 minute

Scenario: Start "Cisco DirSync" service
When we submit a request to start "Cisco DirSync" service
And the "Cisco DirSync" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco DirSync" service should be "STARTED"

Scenario: Stop "Cisco DirSync" service
When we submit a request to start "Cisco DirSync" service
And the "Cisco DirSync" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco DirSync" service should be "STOPPED"

Scenario: Restart "Cisco DirSync" service
When we submit a request to restart "Cisco DirSync" service
And the "Cisco DirSync" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco DirSync" service should be "STARTED"
And the up time of "Cisco DirSync" service should be less than 1 minute

Scenario: Start "Cisco Intercluster Lookup Service" service
When we submit a request to start "Cisco Intercluster Lookup Service" service
And the "Cisco Intercluster Lookup Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Intercluster Lookup Service" service should be "STARTED"

Scenario: Stop "Cisco Intercluster Lookup Service" service
When we submit a request to start "Cisco Intercluster Lookup Service" service
And the "Cisco Intercluster Lookup Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Intercluster Lookup Service" service should be "STOPPED"

Scenario: Restart "Cisco Intercluster Lookup Service" service
When we submit a request to restart "Cisco Intercluster Lookup Service" service
And the "Cisco Intercluster Lookup Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Intercluster Lookup Service" service should be "STARTED"
And the up time of "Cisco Intercluster Lookup Service" service should be less than 1 minute

Scenario: Start "Cisco Location Bandwidth Manager" service
When we submit a request to start "Cisco Location Bandwidth Manager" service
And the "Cisco Location Bandwidth Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Location Bandwidth Manager" service should be "STARTED"

Scenario: Stop "Cisco Location Bandwidth Manager" service
When we submit a request to start "Cisco Location Bandwidth Manager" service
And the "Cisco Location Bandwidth Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Location Bandwidth Manager" service should be "STOPPED"

Scenario: Restart "Cisco Location Bandwidth Manager" service
When we submit a request to restart "Cisco Location Bandwidth Manager" service
And the "Cisco Location Bandwidth Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Location Bandwidth Manager" service should be "STARTED"
And the up time of "Cisco Location Bandwidth Manager" service should be less than 1 minute

Scenario: Start "Cisco Directory Number Alias Sync" service
When we submit a request to start "Cisco Directory Number Alias Sync" service
And the "Cisco Directory Number Alias Sync" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Directory Number Alias Sync" service should be "STARTED"

Scenario: Stop "Cisco Directory Number Alias Sync" service
When we submit a request to start "Cisco Directory Number Alias Sync" service
And the "Cisco Directory Number Alias Sync" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Directory Number Alias Sync" service should be "STOPPED"

Scenario: Restart "Cisco Directory Number Alias Sync" service
When we submit a request to restart "Cisco Directory Number Alias Sync" service
And the "Cisco Directory Number Alias Sync" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Directory Number Alias Sync" service should be "STARTED"
And the up time of "Cisco Directory Number Alias Sync" service should be less than 1 minute

Scenario: Start "Cisco Directory Number Alias Lookup" service
When we submit a request to start "Cisco Directory Number Alias Lookup" service
And the "Cisco Directory Number Alias Lookup" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Directory Number Alias Lookup" service should be "STARTED"

Scenario: Stop "Cisco Directory Number Alias Lookup" service
When we submit a request to start "Cisco Directory Number Alias Lookup" service
And the "Cisco Directory Number Alias Lookup" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Directory Number Alias Lookup" service should be "STOPPED"

Scenario: Restart "Cisco Directory Number Alias Lookup" service
When we submit a request to restart "Cisco Directory Number Alias Lookup" service
And the "Cisco Directory Number Alias Lookup" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Directory Number Alias Lookup" service should be "STARTED"
And the up time of "Cisco Directory Number Alias Lookup" service should be less than 1 minute

Scenario: Start "Self Provisioning IVR" service
When we submit a request to start "Self Provisioning IVR" service
And the "Self Provisioning IVR" service is "stopped"
Then we should receive "STARTED" message
And the status of "Self Provisioning IVR" service should be "STARTED"

Scenario: Stop "Self Provisioning IVR" service
When we submit a request to start "Self Provisioning IVR" service
And the "Self Provisioning IVR" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Self Provisioning IVR" service should be "STOPPED"

Scenario: Restart "Self Provisioning IVR" service
When we submit a request to restart "Self Provisioning IVR" service
And the "Self Provisioning IVR" service is "started"
Then we should receive "RESTARTED" message
And the status of "Self Provisioning IVR" service should be "STARTED"
And the up time of "Self Provisioning IVR" service should be less than 1 minute

Scenario: Start "Cisco CallManager Serviceability RTMT" service
When we submit a request to start "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CallManager Serviceability RTMT" service should be "STARTED"

Scenario: Stop "Cisco CallManager Serviceability RTMT" service
When we submit a request to start "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CallManager Serviceability RTMT" service should be "STOPPED"

Scenario: Restart "Cisco CallManager Serviceability RTMT" service
When we submit a request to restart "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CallManager Serviceability RTMT" service should be "STARTED"
And the up time of "Cisco CallManager Serviceability RTMT" service should be less than 1 minute

Scenario: Start "Cisco RTMT Reporter Servlet" service
When we submit a request to start "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco RTMT Reporter Servlet" service should be "STARTED"

Scenario: Stop "Cisco RTMT Reporter Servlet" service
When we submit a request to start "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco RTMT Reporter Servlet" service should be "STOPPED"

Scenario: Restart "Cisco RTMT Reporter Servlet" service
When we submit a request to restart "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco RTMT Reporter Servlet" service should be "STARTED"
And the up time of "Cisco RTMT Reporter Servlet" service should be less than 1 minute

Scenario: Start "Cisco Log Partition Monitoring Tool" service
When we submit a request to start "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Log Partition Monitoring Tool" service should be "STARTED"

Scenario: Stop "Cisco Log Partition Monitoring Tool" service
When we submit a request to start "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Log Partition Monitoring Tool" service should be "STOPPED"

Scenario: Restart "Cisco Log Partition Monitoring Tool" service
When we submit a request to restart "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Log Partition Monitoring Tool" service should be "STARTED"
And the up time of "Cisco Log Partition Monitoring Tool" service should be less than 1 minute

Scenario: Start "Cisco Tomcat Stats Servlet" service
When we submit a request to start "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Tomcat Stats Servlet" service should be "STARTED"

Scenario: Stop "Cisco Tomcat Stats Servlet" service
When we submit a request to start "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Tomcat Stats Servlet" service should be "STOPPED"

Scenario: Restart "Cisco Tomcat Stats Servlet" service
When we submit a request to restart "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Tomcat Stats Servlet" service should be "STARTED"
And the up time of "Cisco Tomcat Stats Servlet" service should be less than 1 minute

Scenario: Start "Cisco RIS Data Collector" service
When we submit a request to start "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco RIS Data Collector" service should be "STARTED"

Scenario: Stop "Cisco RIS Data Collector" service
When we submit a request to start "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco RIS Data Collector" service should be "STOPPED"

Scenario: Restart "Cisco RIS Data Collector" service
When we submit a request to restart "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco RIS Data Collector" service should be "STARTED"
And the up time of "Cisco RIS Data Collector" service should be less than 1 minute

Scenario: Start "Cisco AMC Service" service
When we submit a request to start "Cisco AMC Service" service
And the "Cisco AMC Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco AMC Service" service should be "STARTED"

Scenario: Stop "Cisco AMC Service" service
When we submit a request to start "Cisco AMC Service" service
And the "Cisco AMC Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco AMC Service" service should be "STOPPED"

Scenario: Restart "Cisco AMC Service" service
When we submit a request to restart "Cisco AMC Service" service
And the "Cisco AMC Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco AMC Service" service should be "STARTED"
And the up time of "Cisco AMC Service" service should be less than 1 minute

Scenario: Start "Cisco Audit Event Service" service
When we submit a request to start "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Audit Event Service" service should be "STARTED"

Scenario: Stop "Cisco Audit Event Service" service
When we submit a request to start "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Audit Event Service" service should be "STOPPED"

Scenario: Restart "Cisco Audit Event Service" service
When we submit a request to restart "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Audit Event Service" service should be "STARTED"
And the up time of "Cisco Audit Event Service" service should be less than 1 minute

Scenario: Start "Platform Administrative Web Service" service
When we submit a request to start "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Platform Administrative Web Service" service should be "STARTED"

Scenario: Stop "Platform Administrative Web Service" service
When we submit a request to start "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Platform Administrative Web Service" service should be "STOPPED"

Scenario: Restart "Platform Administrative Web Service" service
When we submit a request to restart "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Platform Administrative Web Service" service should be "STARTED"
And the up time of "Platform Administrative Web Service" service should be less than 1 minute

Scenario: Start "A Cisco DB" service
When we submit a request to start "A Cisco DB" service
And the "A Cisco DB" service is "stopped"
Then we should receive "STARTED" message
And the status of "A Cisco DB" service should be "STARTED"

Scenario: Stop "A Cisco DB" service
When we submit a request to start "A Cisco DB" service
And the "A Cisco DB" service is "stopped"
Then we should receive "STOPPED" message
And the status of "A Cisco DB" service should be "STOPPED"

Scenario: Restart "A Cisco DB" service
When we submit a request to restart "A Cisco DB" service
And the "A Cisco DB" service is "started"
Then we should receive "RESTARTED" message
And the status of "A Cisco DB" service should be "STARTED"
And the up time of "A Cisco DB" service should be less than 1 minute

Scenario: Start "A Cisco DB Replicator" service
When we submit a request to start "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "stopped"
Then we should receive "STARTED" message
And the status of "A Cisco DB Replicator" service should be "STARTED"

Scenario: Stop "A Cisco DB Replicator" service
When we submit a request to start "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "stopped"
Then we should receive "STOPPED" message
And the status of "A Cisco DB Replicator" service should be "STOPPED"

Scenario: Restart "A Cisco DB Replicator" service
When we submit a request to restart "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "started"
Then we should receive "RESTARTED" message
And the status of "A Cisco DB Replicator" service should be "STARTED"
And the up time of "A Cisco DB Replicator" service should be less than 1 minute

Scenario: Start "SNMP Master Agent" service
When we submit a request to start "SNMP Master Agent" service
And the "SNMP Master Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "SNMP Master Agent" service should be "STARTED"

Scenario: Stop "SNMP Master Agent" service
When we submit a request to start "SNMP Master Agent" service
And the "SNMP Master Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "SNMP Master Agent" service should be "STOPPED"

Scenario: Restart "SNMP Master Agent" service
When we submit a request to restart "SNMP Master Agent" service
And the "SNMP Master Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "SNMP Master Agent" service should be "STARTED"
And the up time of "SNMP Master Agent" service should be less than 1 minute

Scenario: Start "MIB2 Agent" service
When we submit a request to start "MIB2 Agent" service
And the "MIB2 Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "MIB2 Agent" service should be "STARTED"

Scenario: Stop "MIB2 Agent" service
When we submit a request to start "MIB2 Agent" service
And the "MIB2 Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "MIB2 Agent" service should be "STOPPED"

Scenario: Restart "MIB2 Agent" service
When we submit a request to restart "MIB2 Agent" service
And the "MIB2 Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "MIB2 Agent" service should be "STARTED"
And the up time of "MIB2 Agent" service should be less than 1 minute

Scenario: Start "Host Resources Agent" service
When we submit a request to start "Host Resources Agent" service
And the "Host Resources Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Host Resources Agent" service should be "STARTED"

Scenario: Stop "Host Resources Agent" service
When we submit a request to start "Host Resources Agent" service
And the "Host Resources Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Host Resources Agent" service should be "STOPPED"

Scenario: Restart "Host Resources Agent" service
When we submit a request to restart "Host Resources Agent" service
And the "Host Resources Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Host Resources Agent" service should be "STARTED"
And the up time of "Host Resources Agent" service should be less than 1 minute

Scenario: Start "System Application Agent" service
When we submit a request to start "System Application Agent" service
And the "System Application Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "System Application Agent" service should be "STARTED"

Scenario: Stop "System Application Agent" service
When we submit a request to start "System Application Agent" service
And the "System Application Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "System Application Agent" service should be "STOPPED"

Scenario: Restart "System Application Agent" service
When we submit a request to restart "System Application Agent" service
And the "System Application Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "System Application Agent" service should be "STARTED"
And the up time of "System Application Agent" service should be less than 1 minute

Scenario: Start "Cisco CDP Agent" service
When we submit a request to start "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CDP Agent" service should be "STARTED"

Scenario: Stop "Cisco CDP Agent" service
When we submit a request to start "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CDP Agent" service should be "STOPPED"

Scenario: Restart "Cisco CDP Agent" service
When we submit a request to restart "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CDP Agent" service should be "STARTED"
And the up time of "Cisco CDP Agent" service should be less than 1 minute

Scenario: Start "Cisco Syslog Agent" service
When we submit a request to start "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Syslog Agent" service should be "STARTED"

Scenario: Stop "Cisco Syslog Agent" service
When we submit a request to start "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Syslog Agent" service should be "STOPPED"

Scenario: Restart "Cisco Syslog Agent" service
When we submit a request to restart "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Syslog Agent" service should be "STARTED"
And the up time of "Cisco Syslog Agent" service should be less than 1 minute

Scenario: Start "Cisco Certificate Expiry Monitor" service
When we submit a request to start "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Certificate Expiry Monitor" service should be "STARTED"

Scenario: Stop "Cisco Certificate Expiry Monitor" service
When we submit a request to start "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Certificate Expiry Monitor" service should be "STOPPED"

Scenario: Restart "Cisco Certificate Expiry Monitor" service
When we submit a request to restart "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Certificate Expiry Monitor" service should be "STARTED"
And the up time of "Cisco Certificate Expiry Monitor" service should be less than 1 minute

Scenario: Start "Cisco Certificate Change Notification" service
When we submit a request to start "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Certificate Change Notification" service should be "STARTED"

Scenario: Stop "Cisco Certificate Change Notification" service
When we submit a request to start "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Certificate Change Notification" service should be "STOPPED"

Scenario: Restart "Cisco Certificate Change Notification" service
When we submit a request to restart "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Certificate Change Notification" service should be "STARTED"
And the up time of "Cisco Certificate Change Notification" service should be less than 1 minute

Scenario: Start "Cisco ELM Client Service" service
When we submit a request to start "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco ELM Client Service" service should be "STARTED"

Scenario: Stop "Cisco ELM Client Service" service
When we submit a request to start "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco ELM Client Service" service should be "STOPPED"

Scenario: Restart "Cisco ELM Client Service" service
When we submit a request to restart "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco ELM Client Service" service should be "STARTED"
And the up time of "Cisco ELM Client Service" service should be less than 1 minute

Scenario: Start "Cisco Tomcat" service
When we submit a request to start "Cisco Tomcat" service
And the "Cisco Tomcat" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Tomcat" service should be "STARTED"

Scenario: Stop "Cisco Tomcat" service
When we submit a request to start "Cisco Tomcat" service
And the "Cisco Tomcat" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Tomcat" service should be "STOPPED"

Scenario: Restart "Cisco Tomcat" service
When we submit a request to restart "Cisco Tomcat" service
And the "Cisco Tomcat" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Tomcat" service should be "STARTED"
And the up time of "Cisco Tomcat" service should be less than 1 minute

Scenario: Start "Cisco License Manager" service
When we submit a request to start "Cisco License Manager" service
And the "Cisco License Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco License Manager" service should be "STARTED"

Scenario: Stop "Cisco License Manager" service
When we submit a request to start "Cisco License Manager" service
And the "Cisco License Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco License Manager" service should be "STOPPED"

Scenario: Restart "Cisco License Manager" service
When we submit a request to restart "Cisco License Manager" service
And the "Cisco License Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco License Manager" service should be "STARTED"
And the up time of "Cisco License Manager" service should be less than 1 minute

Scenario: Start "Cisco CallManager Serviceability" service
When we submit a request to start "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CallManager Serviceability" service should be "STARTED"

Scenario: Stop "Cisco CallManager Serviceability" service
When we submit a request to start "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CallManager Serviceability" service should be "STOPPED"

Scenario: Restart "Cisco CallManager Serviceability" service
When we submit a request to restart "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CallManager Serviceability" service should be "STARTED"
And the up time of "Cisco CallManager Serviceability" service should be less than 1 minute

Scenario: Start "Cisco CDP" service
When we submit a request to start "Cisco CDP" service
And the "Cisco CDP" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CDP" service should be "STARTED"

Scenario: Stop "Cisco CDP" service
When we submit a request to start "Cisco CDP" service
And the "Cisco CDP" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CDP" service should be "STOPPED"

Scenario: Restart "Cisco CDP" service
When we submit a request to restart "Cisco CDP" service
And the "Cisco CDP" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CDP" service should be "STARTED"
And the up time of "Cisco CDP" service should be less than 1 minute

Scenario: Start "Cisco Trace Collection Servlet" service
When we submit a request to start "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Trace Collection Servlet" service should be "STARTED"

Scenario: Stop "Cisco Trace Collection Servlet" service
When we submit a request to start "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Trace Collection Servlet" service should be "STOPPED"

Scenario: Restart "Cisco Trace Collection Servlet" service
When we submit a request to restart "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Trace Collection Servlet" service should be "STARTED"
And the up time of "Cisco Trace Collection Servlet" service should be less than 1 minute

Scenario: Start "Cisco Trace Collection Service" service
When we submit a request to start "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Trace Collection Service" service should be "STARTED"

Scenario: Stop "Cisco Trace Collection Service" service
When we submit a request to start "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Trace Collection Service" service should be "STOPPED"

Scenario: Restart "Cisco Trace Collection Service" service
When we submit a request to restart "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Trace Collection Service" service should be "STARTED"
And the up time of "Cisco Trace Collection Service" service should be less than 1 minute

Scenario: Start "Cisco Database Layer Monitor" service
When we submit a request to start "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Database Layer Monitor" service should be "STARTED"

Scenario: Stop "Cisco Database Layer Monitor" service
When we submit a request to start "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Database Layer Monitor" service should be "STOPPED"

Scenario: Restart "Cisco Database Layer Monitor" service
When we submit a request to restart "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Database Layer Monitor" service should be "STARTED"
And the up time of "Cisco Database Layer Monitor" service should be less than 1 minute

Scenario: Start "Cisco CallManager Admin" service
When we submit a request to start "Cisco CallManager Admin" service
And the "Cisco CallManager Admin" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CallManager Admin" service should be "STARTED"

Scenario: Stop "Cisco CallManager Admin" service
When we submit a request to start "Cisco CallManager Admin" service
And the "Cisco CallManager Admin" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CallManager Admin" service should be "STOPPED"

Scenario: Restart "Cisco CallManager Admin" service
When we submit a request to restart "Cisco CallManager Admin" service
And the "Cisco CallManager Admin" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CallManager Admin" service should be "STARTED"
And the up time of "Cisco CallManager Admin" service should be less than 1 minute

Scenario: Start "SOAP -Real-Time Service APIs" service
When we submit a request to start "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "stopped"
Then we should receive "STARTED" message
And the status of "SOAP -Real-Time Service APIs" service should be "STARTED"

Scenario: Stop "SOAP -Real-Time Service APIs" service
When we submit a request to start "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "stopped"
Then we should receive "STOPPED" message
And the status of "SOAP -Real-Time Service APIs" service should be "STOPPED"

Scenario: Restart "SOAP -Real-Time Service APIs" service
When we submit a request to restart "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "started"
Then we should receive "RESTARTED" message
And the status of "SOAP -Real-Time Service APIs" service should be "STARTED"
And the up time of "SOAP -Real-Time Service APIs" service should be less than 1 minute

Scenario: Start "SOAP -Performance Monitoring APIs" service
When we submit a request to start "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "stopped"
Then we should receive "STARTED" message
And the status of "SOAP -Performance Monitoring APIs" service should be "STARTED"

Scenario: Stop "SOAP -Performance Monitoring APIs" service
When we submit a request to start "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "stopped"
Then we should receive "STOPPED" message
And the status of "SOAP -Performance Monitoring APIs" service should be "STOPPED"

Scenario: Restart "SOAP -Performance Monitoring APIs" service
When we submit a request to restart "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "started"
Then we should receive "RESTARTED" message
And the status of "SOAP -Performance Monitoring APIs" service should be "STARTED"
And the up time of "SOAP -Performance Monitoring APIs" service should be less than 1 minute

Scenario: Start "SOAP -Log Collection APIs" service
When we submit a request to start "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "stopped"
Then we should receive "STARTED" message
And the status of "SOAP -Log Collection APIs" service should be "STARTED"

Scenario: Stop "SOAP -Log Collection APIs" service
When we submit a request to start "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "stopped"
Then we should receive "STOPPED" message
And the status of "SOAP -Log Collection APIs" service should be "STOPPED"

Scenario: Restart "SOAP -Log Collection APIs" service
When we submit a request to restart "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "started"
Then we should receive "RESTARTED" message
And the status of "SOAP -Log Collection APIs" service should be "STARTED"
And the up time of "SOAP -Log Collection APIs" service should be less than 1 minute

Scenario: Start "SOAP - Diagnostic Portal Database Service" service
When we submit a request to start "SOAP - Diagnostic Portal Database Service" service
And the "SOAP - Diagnostic Portal Database Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "SOAP - Diagnostic Portal Database Service" service should be "STARTED"

Scenario: Stop "SOAP - Diagnostic Portal Database Service" service
When we submit a request to start "SOAP - Diagnostic Portal Database Service" service
And the "SOAP - Diagnostic Portal Database Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "SOAP - Diagnostic Portal Database Service" service should be "STOPPED"

Scenario: Restart "SOAP - Diagnostic Portal Database Service" service
When we submit a request to restart "SOAP - Diagnostic Portal Database Service" service
And the "SOAP - Diagnostic Portal Database Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "SOAP - Diagnostic Portal Database Service" service should be "STARTED"
And the up time of "SOAP - Diagnostic Portal Database Service" service should be less than 1 minute

Scenario: Start "Cisco DRF Local" service
When we submit a request to start "Cisco DRF Local" service
And the "Cisco DRF Local" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco DRF Local" service should be "STARTED"

Scenario: Stop "Cisco DRF Local" service
When we submit a request to start "Cisco DRF Local" service
And the "Cisco DRF Local" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco DRF Local" service should be "STOPPED"

Scenario: Restart "Cisco DRF Local" service
When we submit a request to restart "Cisco DRF Local" service
And the "Cisco DRF Local" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco DRF Local" service should be "STARTED"
And the up time of "Cisco DRF Local" service should be less than 1 minute

Scenario: Start "Cisco DRF Master" service
When we submit a request to start "Cisco DRF Master" service
And the "Cisco DRF Master" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco DRF Master" service should be "STARTED"

Scenario: Stop "Cisco DRF Master" service
When we submit a request to start "Cisco DRF Master" service
And the "Cisco DRF Master" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco DRF Master" service should be "STOPPED"

Scenario: Restart "Cisco DRF Master" service
When we submit a request to restart "Cisco DRF Master" service
And the "Cisco DRF Master" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco DRF Master" service should be "STARTED"
And the up time of "Cisco DRF Master" service should be less than 1 minute

Scenario: Start "Cisco CallManager Personal Directory" service
When we submit a request to start "Cisco CallManager Personal Directory" service
And the "Cisco CallManager Personal Directory" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CallManager Personal Directory" service should be "STARTED"

Scenario: Stop "Cisco CallManager Personal Directory" service
When we submit a request to start "Cisco CallManager Personal Directory" service
And the "Cisco CallManager Personal Directory" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CallManager Personal Directory" service should be "STOPPED"

Scenario: Restart "Cisco CallManager Personal Directory" service
When we submit a request to restart "Cisco CallManager Personal Directory" service
And the "Cisco CallManager Personal Directory" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CallManager Personal Directory" service should be "STARTED"
And the up time of "Cisco CallManager Personal Directory" service should be less than 1 minute

Scenario: Start "Cisco Extension Mobility Application" service
When we submit a request to start "Cisco Extension Mobility Application" service
And the "Cisco Extension Mobility Application" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Extension Mobility Application" service should be "STARTED"

Scenario: Stop "Cisco Extension Mobility Application" service
When we submit a request to start "Cisco Extension Mobility Application" service
And the "Cisco Extension Mobility Application" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Extension Mobility Application" service should be "STOPPED"

Scenario: Restart "Cisco Extension Mobility Application" service
When we submit a request to restart "Cisco Extension Mobility Application" service
And the "Cisco Extension Mobility Application" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Extension Mobility Application" service should be "STARTED"
And the up time of "Cisco Extension Mobility Application" service should be less than 1 minute

Scenario: Start "Cisco CallManager Cisco IP Phone Services" service
When we submit a request to start "Cisco CallManager Cisco IP Phone Services" service
And the "Cisco CallManager Cisco IP Phone Services" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CallManager Cisco IP Phone Services" service should be "STARTED"

Scenario: Stop "Cisco CallManager Cisco IP Phone Services" service
When we submit a request to start "Cisco CallManager Cisco IP Phone Services" service
And the "Cisco CallManager Cisco IP Phone Services" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CallManager Cisco IP Phone Services" service should be "STOPPED"

Scenario: Restart "Cisco CallManager Cisco IP Phone Services" service
When we submit a request to restart "Cisco CallManager Cisco IP Phone Services" service
And the "Cisco CallManager Cisco IP Phone Services" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CallManager Cisco IP Phone Services" service should be "STARTED"
And the up time of "Cisco CallManager Cisco IP Phone Services" service should be less than 1 minute

Scenario: Start "Cisco User Data Services" service
When we submit a request to start "Cisco User Data Services" service
And the "Cisco User Data Services" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco User Data Services" service should be "STARTED"

Scenario: Stop "Cisco User Data Services" service
When we submit a request to start "Cisco User Data Services" service
And the "Cisco User Data Services" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco User Data Services" service should be "STOPPED"

Scenario: Restart "Cisco User Data Services" service
When we submit a request to restart "Cisco User Data Services" service
And the "Cisco User Data Services" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco User Data Services" service should be "STARTED"
And the up time of "Cisco User Data Services" service should be less than 1 minute

Scenario: Start "Cisco Change Credential Application" service
When we submit a request to start "Cisco Change Credential Application" service
And the "Cisco Change Credential Application" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Change Credential Application" service should be "STARTED"

Scenario: Stop "Cisco Change Credential Application" service
When we submit a request to start "Cisco Change Credential Application" service
And the "Cisco Change Credential Application" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Change Credential Application" service should be "STOPPED"

Scenario: Restart "Cisco Change Credential Application" service
When we submit a request to restart "Cisco Change Credential Application" service
And the "Cisco Change Credential Application" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Change Credential Application" service should be "STARTED"
And the up time of "Cisco Change Credential Application" service should be less than 1 minute

Scenario: Start "Cisco E911" service
When we submit a request to start "Cisco E911" service
And the "Cisco E911" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco E911" service should be "STARTED"

Scenario: Stop "Cisco E911" service
When we submit a request to start "Cisco E911" service
And the "Cisco E911" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco E911" service should be "STOPPED"

Scenario: Restart "Cisco E911" service
When we submit a request to restart "Cisco E911" service
And the "Cisco E911" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco E911" service should be "STARTED"
And the up time of "Cisco E911" service should be less than 1 minute

Scenario: Start "Cisco CDR Repository Manager" service
When we submit a request to start "Cisco CDR Repository Manager" service
And the "Cisco CDR Repository Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CDR Repository Manager" service should be "STARTED"

Scenario: Stop "Cisco CDR Repository Manager" service
When we submit a request to start "Cisco CDR Repository Manager" service
And the "Cisco CDR Repository Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CDR Repository Manager" service should be "STOPPED"

Scenario: Restart "Cisco CDR Repository Manager" service
When we submit a request to restart "Cisco CDR Repository Manager" service
And the "Cisco CDR Repository Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CDR Repository Manager" service should be "STARTED"
And the up time of "Cisco CDR Repository Manager" service should be less than 1 minute

Scenario: Start "Cisco CDR Agent" service
When we submit a request to start "Cisco CDR Agent" service
And the "Cisco CDR Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CDR Agent" service should be "STARTED"

Scenario: Stop "Cisco CDR Agent" service
When we submit a request to start "Cisco CDR Agent" service
And the "Cisco CDR Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CDR Agent" service should be "STOPPED"

Scenario: Restart "Cisco CDR Agent" service
When we submit a request to restart "Cisco CDR Agent" service
And the "Cisco CDR Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CDR Agent" service should be "STARTED"
And the up time of "Cisco CDR Agent" service should be less than 1 minute

Scenario: Start "Cisco CAR Scheduler" service
When we submit a request to start "Cisco CAR Scheduler" service
And the "Cisco CAR Scheduler" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CAR Scheduler" service should be "STARTED"

Scenario: Stop "Cisco CAR Scheduler" service
When we submit a request to start "Cisco CAR Scheduler" service
And the "Cisco CAR Scheduler" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CAR Scheduler" service should be "STOPPED"

Scenario: Restart "Cisco CAR Scheduler" service
When we submit a request to restart "Cisco CAR Scheduler" service
And the "Cisco CAR Scheduler" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CAR Scheduler" service should be "STARTED"
And the up time of "Cisco CAR Scheduler" service should be less than 1 minute

Scenario: Start "Cisco SOAP - CallRecord Service" service
When we submit a request to start "Cisco SOAP - CallRecord Service" service
And the "Cisco SOAP - CallRecord Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco SOAP - CallRecord Service" service should be "STARTED"

Scenario: Stop "Cisco SOAP - CallRecord Service" service
When we submit a request to start "Cisco SOAP - CallRecord Service" service
And the "Cisco SOAP - CallRecord Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco SOAP - CallRecord Service" service should be "STOPPED"

Scenario: Restart "Cisco SOAP - CallRecord Service" service
When we submit a request to restart "Cisco SOAP - CallRecord Service" service
And the "Cisco SOAP - CallRecord Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco SOAP - CallRecord Service" service should be "STARTED"
And the up time of "Cisco SOAP - CallRecord Service" service should be less than 1 minute

Scenario: Start "Cisco CAR DB" service
When we submit a request to start "Cisco CAR DB" service
And the "Cisco CAR DB" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CAR DB" service should be "STARTED"

Scenario: Stop "Cisco CAR DB" service
When we submit a request to start "Cisco CAR DB" service
And the "Cisco CAR DB" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CAR DB" service should be "STOPPED"

Scenario: Restart "Cisco CAR DB" service
When we submit a request to restart "Cisco CAR DB" service
And the "Cisco CAR DB" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CAR DB" service should be "STARTED"
And the up time of "Cisco CAR DB" service should be less than 1 minute

Scenario: Start "Cisco Trust Verification Service" service
When we submit a request to start "Cisco Trust Verification Service" service
And the "Cisco Trust Verification Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Trust Verification Service" service should be "STARTED"

Scenario: Stop "Cisco Trust Verification Service" service
When we submit a request to start "Cisco Trust Verification Service" service
And the "Cisco Trust Verification Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Trust Verification Service" service should be "STOPPED"

Scenario: Restart "Cisco Trust Verification Service" service
When we submit a request to restart "Cisco Trust Verification Service" service
And the "Cisco Trust Verification Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Trust Verification Service" service should be "STARTED"
And the up time of "Cisco Trust Verification Service" service should be less than 1 minute

################################ Valid input -- Activate/Deactivate Services

Scenario: Activate "Cisco CallManager" service
When we submit a request to activate "Cisco CallManager" service
And the "Cisco CallManager" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco CallManager" service should be "ACTIVATED"

Scenario: Deactivate "Cisco CallManager" service
When we submit a request to deactivate "Cisco CallManager" service
And the "Cisco CallManager" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco CallManager" service should be "DEACTIVATED"

Scenario: Activate "Cisco Unified Mobile Voice Access Service" service
When we submit a request to activate "Cisco Unified Mobile Voice Access Service" service
And the "Cisco Unified Mobile Voice Access Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Unified Mobile Voice Access Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Unified Mobile Voice Access Service" service
When we submit a request to deactivate "Cisco Unified Mobile Voice Access Service" service
And the "Cisco Unified Mobile Voice Access Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Unified Mobile Voice Access Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco IP Voice Media Streaming App" service
When we submit a request to activate "Cisco IP Voice Media Streaming App" service
And the "Cisco IP Voice Media Streaming App" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco IP Voice Media Streaming App" service should be "ACTIVATED"

Scenario: Deactivate "Cisco IP Voice Media Streaming App" service
When we submit a request to deactivate "Cisco IP Voice Media Streaming App" service
And the "Cisco IP Voice Media Streaming App" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco IP Voice Media Streaming App" service should be "DEACTIVATED"

Scenario: Activate "Cisco CTI Manager" service
When we submit a request to activate "Cisco CTI Manager" service
And the "Cisco CTI Manager" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco CTI Manager" service should be "ACTIVATED"

Scenario: Deactivate "Cisco CTI Manager" service
When we submit a request to deactivate "Cisco CTI Manager" service
And the "Cisco CTI Manager" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco CTI Manager" service should be "DEACTIVATED"

Scenario: Activate "Cisco Extension Mobility" service
When we submit a request to activate "Cisco Extension Mobility" service
And the "Cisco Extension Mobility" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Extension Mobility" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Extension Mobility" service
When we submit a request to deactivate "Cisco Extension Mobility" service
And the "Cisco Extension Mobility" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Extension Mobility" service should be "DEACTIVATED"

Scenario: Activate "Cisco Extended Functions" service
When we submit a request to activate "Cisco Extended Functions" service
And the "Cisco Extended Functions" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Extended Functions" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Extended Functions" service
When we submit a request to deactivate "Cisco Extended Functions" service
And the "Cisco Extended Functions" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Extended Functions" service should be "DEACTIVATED"

Scenario: Activate "Cisco DHCP Monitor Service" service
When we submit a request to activate "Cisco DHCP Monitor Service" service
And the "Cisco DHCP Monitor Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco DHCP Monitor Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco DHCP Monitor Service" service
When we submit a request to deactivate "Cisco DHCP Monitor Service" service
And the "Cisco DHCP Monitor Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco DHCP Monitor Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco Dialed Number Analyzer Server" service
When we submit a request to activate "Cisco Dialed Number Analyzer Server" service
And the "Cisco Dialed Number Analyzer Server" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Dialed Number Analyzer Server" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Dialed Number Analyzer Server" service
When we submit a request to deactivate "Cisco Dialed Number Analyzer Server" service
And the "Cisco Dialed Number Analyzer Server" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Dialed Number Analyzer Server" service should be "DEACTIVATED"

Scenario: Activate "Cisco Dial Number Analyzer" service
When we submit a request to activate "Cisco Dial Number Analyzer" service
And the "Cisco Dial Number Analyzer" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Dial Number Analyzer" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Dial Number Analyzer" service
When we submit a request to deactivate "Cisco Dial Number Analyzer" service
And the "Cisco Dial Number Analyzer" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Dial Number Analyzer" service should be "DEACTIVATED"

Scenario: Activate "Cisco Tftp" service
When we submit a request to activate "Cisco Tftp" service
And the "Cisco Tftp" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Tftp" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Tftp" service
When we submit a request to deactivate "Cisco Tftp" service
And the "Cisco Tftp" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Tftp" service should be "DEACTIVATED"

Scenario: Activate "Cisco IP Manager Assisistant" service
When we submit a request to activate "Cisco IP Manager Assisistant" service
And the "Cisco IP Manager Assisistant" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco IP Manager Assisistant" service should be "ACTIVATED"

Scenario: Deactivate "Cisco IP Manager Assisistant" service
When we submit a request to deactivate "Cisco IP Manager Assisistant" service
And the "Cisco IP Manager Assisistant" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco IP Manager Assisistant" service should be "DEACTIVATED"

Scenario: Activate "Cisco WebDialer Web Service" service
When we submit a request to activate "Cisco WebDialer Web Service" service
And the "Cisco WebDialer Web Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco WebDialer Web Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco WebDialer Web Service" service
When we submit a request to deactivate "Cisco WebDialer Web Service" service
And the "Cisco WebDialer Web Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco WebDialer Web Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco SOAP - CDRonDemand Service" service
When we submit a request to activate "Cisco SOAP - CDRonDemand Service" service
And the "Cisco SOAP - CDRonDemand Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco SOAP - CDRonDemand Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco SOAP - CDRonDemand Service" service
When we submit a request to deactivate "Cisco SOAP - CDRonDemand Service" service
And the "Cisco SOAP - CDRonDemand Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco SOAP - CDRonDemand Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco CAR Web Service" service
When we submit a request to activate "Cisco CAR Web Service" service
And the "Cisco CAR Web Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco CAR Web Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco CAR Web Service" service
When we submit a request to deactivate "Cisco CAR Web Service" service
And the "Cisco CAR Web Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco CAR Web Service" service should be "DEACTIVATED"

################################ Miscellaneous Service Features for CUCM

Scenario: Query for all servers in cluster
When we submit a request for all servers in the cluster
Then we should receive a list of hostnames, fqdns or IP Addresses

Scenario: Upload File to TFTP server
When we submit an upload of a file to a TFTP server
And the file is a valid file
Then we should receive a "UPLOADED" response
And the file should exist on the TFTP server

Scenario: Upload File to Music on Hold server
When we submit an upload of a file to a Music on Hold server
And the file is a valid audio file
Then we should receive a "UPLOADED" response
And the file should exist on the Music on Hold server

############################ Error handling

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






################################################ Instant Messaging and Presence ###################################################


Background:
Given A server running Cisco Instant Messaging and Presence version "any" is accessible
And the following user credentials
	| username  | password |
	| adminuser | foobar   |

################################ Valid input -- Status Running Services

Scenario: Check the status of a stopped "Cisco AXL Web Service" service
When we submit a request for the status of the "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco AXL Web Service" service
When we submit a request for the status of the "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco AXL Web Service" service
When we submit a request for the status of the "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Bulk Provisioning Service" service
When we submit a request for the status of the "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Bulk Provisioning Service" service
When we submit a request for the status of the "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Bulk Provisioning Service" service
When we submit a request for the status of the "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Serviceability Reporter" service
When we submit a request for the status of the "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Serviceability Reporter" service
When we submit a request for the status of the "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Serviceability Reporter" service
When we submit a request for the status of the "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco SIP Proxy" service
When we submit a request for the status of the "Cisco SIP Proxy" service
And the "Cisco SIP Proxy" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco SIP Proxy" service
When we submit a request for the status of the "Cisco SIP Proxy" service
And the "Cisco SIP Proxy" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco SIP Proxy" service
When we submit a request for the status of the "Cisco SIP Proxy" service
And the "Cisco SIP Proxy" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Presence Engine" service
When we submit a request for the status of the "Cisco Presence Engine" service
And the "Cisco Presence Engine" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Presence Engine" service
When we submit a request for the status of the "Cisco Presence Engine" service
And the "Cisco Presence Engine" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Presence Engine" service
When we submit a request for the status of the "Cisco Presence Engine" service
And the "Cisco Presence Engine" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco XCP Text Conference Manager" service
When we submit a request for the status of the "Cisco XCP Text Conference Manager" service
And the "Cisco XCP Text Conference Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco XCP Text Conference Manager" service
When we submit a request for the status of the "Cisco XCP Text Conference Manager" service
And the "Cisco XCP Text Conference Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco XCP Text Conference Manager" service
When we submit a request for the status of the "Cisco XCP Text Conference Manager" service
And the "Cisco XCP Text Conference Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco XCP Web Connection Manager" service
When we submit a request for the status of the "Cisco XCP Web Connection Manager" service
And the "Cisco XCP Web Connection Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco XCP Web Connection Manager" service
When we submit a request for the status of the "Cisco XCP Web Connection Manager" service
And the "Cisco XCP Web Connection Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco XCP Web Connection Manager" service
When we submit a request for the status of the "Cisco XCP Web Connection Manager" service
And the "Cisco XCP Web Connection Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco XCP Connection Manager" service
When we submit a request for the status of the "Cisco XCP Connection Manager" service
And the "Cisco XCP Connection Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco XCP Connection Manager" service
When we submit a request for the status of the "Cisco XCP Connection Manager" service
And the "Cisco XCP Connection Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco XCP Connection Manager" service
When we submit a request for the status of the "Cisco XCP Connection Manager" service
And the "Cisco XCP Connection Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco XCP SIP Federation Connection Manager" service
When we submit a request for the status of the "Cisco XCP SIP Federation Connection Manager" service
And the "Cisco XCP SIP Federation Connection Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco XCP SIP Federation Connection Manager" service
When we submit a request for the status of the "Cisco XCP SIP Federation Connection Manager" service
And the "Cisco XCP SIP Federation Connection Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco XCP SIP Federation Connection Manager" service
When we submit a request for the status of the "Cisco XCP SIP Federation Connection Manager" service
And the "Cisco XCP SIP Federation Connection Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco XCP XMPP Federation Connection Manager" service
When we submit a request for the status of the "Cisco XCP XMPP Federation Connection Manager" service
And the "Cisco XCP XMPP Federation Connection Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco XCP XMPP Federation Connection Manager" service
When we submit a request for the status of the "Cisco XCP XMPP Federation Connection Manager" service
And the "Cisco XCP XMPP Federation Connection Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco XCP XMPP Federation Connection Manager" service
When we submit a request for the status of the "Cisco XCP XMPP Federation Connection Manager" service
And the "Cisco XCP XMPP Federation Connection Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco XCP Message Archiver" service
When we submit a request for the status of the "Cisco XCP Message Archiver" service
And the "Cisco XCP Message Archiver" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco XCP Message Archiver" service
When we submit a request for the status of the "Cisco XCP Message Archiver" service
And the "Cisco XCP Message Archiver" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco XCP Message Archiver" service
When we submit a request for the status of the "Cisco XCP Message Archiver" service
And the "Cisco XCP Message Archiver" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco XCP Directory Service" service
When we submit a request for the status of the "Cisco XCP Directory Service" service
And the "Cisco XCP Directory Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco XCP Directory Service" service
When we submit a request for the status of the "Cisco XCP Directory Service" service
And the "Cisco XCP Directory Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco XCP Directory Service" service
When we submit a request for the status of the "Cisco XCP Directory Service" service
And the "Cisco XCP Directory Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco XCP Authentication Service" service
When we submit a request for the status of the "Cisco XCP Authentication Service" service
And the "Cisco XCP Authentication Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco XCP Authentication Service" service
When we submit a request for the status of the "Cisco XCP Authentication Service" service
And the "Cisco XCP Authentication Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco XCP Authentication Service" service
When we submit a request for the status of the "Cisco XCP Authentication Service" service
And the "Cisco XCP Authentication Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CallManager Serviceability RTMT" service
When we submit a request for the status of the "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CallManager Serviceability RTMT" service
When we submit a request for the status of the "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CallManager Serviceability RTMT" service
When we submit a request for the status of the "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco RTMT Reporter Servlet" service
When we submit a request for the status of the "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco RTMT Reporter Servlet" service
When we submit a request for the status of the "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco RTMT Reporter Servlet" service
When we submit a request for the status of the "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Log Partition Monitoring Tool" service
When we submit a request for the status of the "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Log Partition Monitoring Tool" service
When we submit a request for the status of the "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Log Partition Monitoring Tool" service
When we submit a request for the status of the "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Tomcat Stats Servlet" service
When we submit a request for the status of the "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Tomcat Stats Servlet" service
When we submit a request for the status of the "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Tomcat Stats Servlet" service
When we submit a request for the status of the "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco RIS Data Collector" service
When we submit a request for the status of the "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco RIS Data Collector" service
When we submit a request for the status of the "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco RIS Data Collector" service
When we submit a request for the status of the "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco AMC Service" service
When we submit a request for the status of the "Cisco AMC Service" service
And the "Cisco AMC Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco AMC Service" service
When we submit a request for the status of the "Cisco AMC Service" service
And the "Cisco AMC Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco AMC Service" service
When we submit a request for the status of the "Cisco AMC Service" service
And the "Cisco AMC Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Audit Event Service" service
When we submit a request for the status of the "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Audit Event Service" service
When we submit a request for the status of the "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Audit Event Service" service
When we submit a request for the status of the "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Platform Administrative Web Service" service
When we submit a request for the status of the "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Platform Administrative Web Service" service
When we submit a request for the status of the "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Platform Administrative Web Service" service
When we submit a request for the status of the "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "A Cisco DB" service
When we submit a request for the status of the "A Cisco DB" service
And the "A Cisco DB" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "A Cisco DB" service
When we submit a request for the status of the "A Cisco DB" service
And the "A Cisco DB" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "A Cisco DB" service
When we submit a request for the status of the "A Cisco DB" service
And the "A Cisco DB" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "A Cisco DB Replicator" service
When we submit a request for the status of the "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "A Cisco DB Replicator" service
When we submit a request for the status of the "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "A Cisco DB Replicator" service
When we submit a request for the status of the "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "SNMP Master Agent" service
When we submit a request for the status of the "SNMP Master Agent" service
And the "SNMP Master Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "SNMP Master Agent" service
When we submit a request for the status of the "SNMP Master Agent" service
And the "SNMP Master Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "SNMP Master Agent" service
When we submit a request for the status of the "SNMP Master Agent" service
And the "SNMP Master Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "MIB2 Agent" service
When we submit a request for the status of the "MIB2 Agent" service
And the "MIB2 Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "MIB2 Agent" service
When we submit a request for the status of the "MIB2 Agent" service
And the "MIB2 Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "MIB2 Agent" service
When we submit a request for the status of the "MIB2 Agent" service
And the "MIB2 Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Host Resources Agent" service
When we submit a request for the status of the "Host Resources Agent" service
And the "Host Resources Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Host Resources Agent" service
When we submit a request for the status of the "Host Resources Agent" service
And the "Host Resources Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Host Resources Agent" service
When we submit a request for the status of the "Host Resources Agent" service
And the "Host Resources Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "System Application Agent" service
When we submit a request for the status of the "System Application Agent" service
And the "System Application Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "System Application Agent" service
When we submit a request for the status of the "System Application Agent" service
And the "System Application Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "System Application Agent" service
When we submit a request for the status of the "System Application Agent" service
And the "System Application Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CDP Agent" service
When we submit a request for the status of the "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CDP Agent" service
When we submit a request for the status of the "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CDP Agent" service
When we submit a request for the status of the "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Syslog Agent" service
When we submit a request for the status of the "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Syslog Agent" service
When we submit a request for the status of the "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Syslog Agent" service
When we submit a request for the status of the "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Certificate Expiry Monitor" service
When we submit a request for the status of the "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Certificate Expiry Monitor" service
When we submit a request for the status of the "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Certificate Expiry Monitor" service
When we submit a request for the status of the "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Certificate Change Notification" service
When we submit a request for the status of the "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Certificate Change Notification" service
When we submit a request for the status of the "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Certificate Change Notification" service
When we submit a request for the status of the "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco ELM Client Service" service
When we submit a request for the status of the "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco ELM Client Service" service
When we submit a request for the status of the "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco ELM Client Service" service
When we submit a request for the status of the "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Tomcat" service
When we submit a request for the status of the "Cisco Tomcat" service
And the "Cisco Tomcat" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Tomcat" service
When we submit a request for the status of the "Cisco Tomcat" service
And the "Cisco Tomcat" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Tomcat" service
When we submit a request for the status of the "Cisco Tomcat" service
And the "Cisco Tomcat" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco License Manager" service
When we submit a request for the status of the "Cisco License Manager" service
And the "Cisco License Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco License Manager" service
When we submit a request for the status of the "Cisco License Manager" service
And the "Cisco License Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco License Manager" service
When we submit a request for the status of the "Cisco License Manager" service
And the "Cisco License Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CallManager Serviceability" service
When we submit a request for the status of the "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CallManager Serviceability" service
When we submit a request for the status of the "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CallManager Serviceability" service
When we submit a request for the status of the "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco CDP" service
When we submit a request for the status of the "Cisco CDP" service
And the "Cisco CDP" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco CDP" service
When we submit a request for the status of the "Cisco CDP" service
And the "Cisco CDP" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco CDP" service
When we submit a request for the status of the "Cisco CDP" service
And the "Cisco CDP" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Trace Collection Servlet" service
When we submit a request for the status of the "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Trace Collection Servlet" service
When we submit a request for the status of the "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Trace Collection Servlet" service
When we submit a request for the status of the "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Trace Collection Service" service
When we submit a request for the status of the "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Trace Collection Service" service
When we submit a request for the status of the "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Trace Collection Service" service
When we submit a request for the status of the "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Database Layer Monitor" service
When we submit a request for the status of the "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Database Layer Monitor" service
When we submit a request for the status of the "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Database Layer Monitor" service
When we submit a request for the status of the "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco IM and Presence Admin" service
When we submit a request for the status of the "Cisco IM and Presence Admin" service
And the "Cisco IM and Presence Admin" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco IM and Presence Admin" service
When we submit a request for the status of the "Cisco IM and Presence Admin" service
And the "Cisco IM and Presence Admin" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco IM and Presence Admin" service
When we submit a request for the status of the "Cisco IM and Presence Admin" service
And the "Cisco IM and Presence Admin" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "SOAP -Real-Time Service APIs" service
When we submit a request for the status of the "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "SOAP -Real-Time Service APIs" service
When we submit a request for the status of the "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "SOAP -Real-Time Service APIs" service
When we submit a request for the status of the "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "SOAP -Performance Monitoring APIs" service
When we submit a request for the status of the "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "SOAP -Performance Monitoring APIs" service
When we submit a request for the status of the "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "SOAP -Performance Monitoring APIs" service
When we submit a request for the status of the "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "SOAP -Log Collection APIs" service
When we submit a request for the status of the "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "SOAP -Log Collection APIs" service
When we submit a request for the status of the "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "SOAP -Log Collection APIs" service
When we submit a request for the status of the "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco DRF Local" service
When we submit a request for the status of the "Cisco DRF Local" service
And the "Cisco DRF Local" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco DRF Local" service
When we submit a request for the status of the "Cisco DRF Local" service
And the "Cisco DRF Local" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco DRF Local" service
When we submit a request for the status of the "Cisco DRF Local" service
And the "Cisco DRF Local" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Sync Agent" service
When we submit a request for the status of the "Cisco Sync Agent" service
And the "Cisco Sync Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Sync Agent" service
When we submit a request for the status of the "Cisco Sync Agent" service
And the "Cisco Sync Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Sync Agent" service
When we submit a request for the status of the "Cisco Sync Agent" service
And the "Cisco Sync Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Login Datastore" service
When we submit a request for the status of the "Cisco Login Datastore" service
And the "Cisco Login Datastore" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Login Datastore" service
When we submit a request for the status of the "Cisco Login Datastore" service
And the "Cisco Login Datastore" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Login Datastore" service
When we submit a request for the status of the "Cisco Login Datastore" service
And the "Cisco Login Datastore" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Route Datastore" service
When we submit a request for the status of the "Cisco Route Datastore" service
And the "Cisco Route Datastore" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Route Datastore" service
When we submit a request for the status of the "Cisco Route Datastore" service
And the "Cisco Route Datastore" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Route Datastore" service
When we submit a request for the status of the "Cisco Route Datastore" service
And the "Cisco Route Datastore" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Config Agent" service
When we submit a request for the status of the "Cisco Config Agent" service
And the "Cisco Config Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Config Agent" service
When we submit a request for the status of the "Cisco Config Agent" service
And the "Cisco Config Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Config Agent" service
When we submit a request for the status of the "Cisco Config Agent" service
And the "Cisco Config Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco OAM Agent" service
When we submit a request for the status of the "Cisco OAM Agent" service
And the "Cisco OAM Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco OAM Agent" service
When we submit a request for the status of the "Cisco OAM Agent" service
And the "Cisco OAM Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco OAM Agent" service
When we submit a request for the status of the "Cisco OAM Agent" service
And the "Cisco OAM Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Client Profile Agent" service
When we submit a request for the status of the "Cisco Client Profile Agent" service
And the "Cisco Client Profile Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Client Profile Agent" service
When we submit a request for the status of the "Cisco Client Profile Agent" service
And the "Cisco Client Profile Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Client Profile Agent" service
When we submit a request for the status of the "Cisco Client Profile Agent" service
And the "Cisco Client Profile Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Intercluster Sync Agent" service
When we submit a request for the status of the "Cisco Intercluster Sync Agent" service
And the "Cisco Intercluster Sync Agent" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Intercluster Sync Agent" service
When we submit a request for the status of the "Cisco Intercluster Sync Agent" service
And the "Cisco Intercluster Sync Agent" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Intercluster Sync Agent" service
When we submit a request for the status of the "Cisco Intercluster Sync Agent" service
And the "Cisco Intercluster Sync Agent" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco XCP Config Manager" service
When we submit a request for the status of the "Cisco XCP Config Manager" service
And the "Cisco XCP Config Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco XCP Config Manager" service
When we submit a request for the status of the "Cisco XCP Config Manager" service
And the "Cisco XCP Config Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco XCP Config Manager" service
When we submit a request for the status of the "Cisco XCP Config Manager" service
And the "Cisco XCP Config Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco XCP Router" service
When we submit a request for the status of the "Cisco XCP Router" service
And the "Cisco XCP Router" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco XCP Router" service
When we submit a request for the status of the "Cisco XCP Router" service
And the "Cisco XCP Router" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco XCP Router" service
When we submit a request for the status of the "Cisco XCP Router" service
And the "Cisco XCP Router" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Server Recovery Manager" service
When we submit a request for the status of the "Cisco Server Recovery Manager" service
And the "Cisco Server Recovery Manager" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Server Recovery Manager" service
When we submit a request for the status of the "Cisco Server Recovery Manager" service
And the "Cisco Server Recovery Manager" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Server Recovery Manager" service
When we submit a request for the status of the "Cisco Server Recovery Manager" service
And the "Cisco Server Recovery Manager" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco IM and Presence Data Monitor" service
When we submit a request for the status of the "Cisco IM and Presence Data Monitor" service
And the "Cisco IM and Presence Data Monitor" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco IM and Presence Data Monitor" service
When we submit a request for the status of the "Cisco IM and Presence Data Monitor" service
And the "Cisco IM and Presence Data Monitor" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco IM and Presence Data Monitor" service
When we submit a request for the status of the "Cisco IM and Presence Data Monitor" service
And the "Cisco IM and Presence Data Monitor" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco Presence Datastore" service
When we submit a request for the status of the "Cisco Presence Datastore" service
And the "Cisco Presence Datastore" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco Presence Datastore" service
When we submit a request for the status of the "Cisco Presence Datastore" service
And the "Cisco Presence Datastore" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco Presence Datastore" service
When we submit a request for the status of the "Cisco Presence Datastore" service
And the "Cisco Presence Datastore" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco SIP Registration Datastore" service
When we submit a request for the status of the "Cisco SIP Registration Datastore" service
And the "Cisco SIP Registration Datastore" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco SIP Registration Datastore" service
When we submit a request for the status of the "Cisco SIP Registration Datastore" service
And the "Cisco SIP Registration Datastore" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco SIP Registration Datastore" service
When we submit a request for the status of the "Cisco SIP Registration Datastore" service
And the "Cisco SIP Registration Datastore" service is "so slow it's not really responding"
Then we should receive "HUNG" message

Scenario: Check the status of a stopped "Cisco RCC Device Selection Service" service
When we submit a request for the status of the "Cisco RCC Device Selection Service" service
And the "Cisco RCC Device Selection Service" service is "stopped"
Then we should receive "STOPPED" message

Scenario: Check the status of a running "Cisco RCC Device Selection Service" service
When we submit a request for the status of the "Cisco RCC Device Selection Service" service
And the "Cisco RCC Device Selection Service" service is "running"
Then we should receive "STARTED" message

Scenario: Check the status of a hung "Cisco RCC Device Selection Service" service
When we submit a request for the status of the "Cisco RCC Device Selection Service" service
And the "Cisco RCC Device Selection Service" service is "so slow it's not really responding"
Then we should receive "HUNG" message

################################ Valid input -- Stop/Start/Restart

Scenario: Start "Cisco AXL Web Service" service
When we submit a request to start "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco AXL Web Service" service should be "STARTED"

Scenario: Stop "Cisco AXL Web Service" service
When we submit a request to start "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco AXL Web Service" service should be "STOPPED"

Scenario: Restart "Cisco AXL Web Service" service
When we submit a request to restart "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco AXL Web Service" service should be "STARTED"
And the up time of "Cisco AXL Web Service" service should be less than 1 minute

Scenario: Start "Cisco Bulk Provisioning Service" service
When we submit a request to start "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Bulk Provisioning Service" service should be "STARTED"

Scenario: Stop "Cisco Bulk Provisioning Service" service
When we submit a request to start "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Bulk Provisioning Service" service should be "STOPPED"

Scenario: Restart "Cisco Bulk Provisioning Service" service
When we submit a request to restart "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Bulk Provisioning Service" service should be "STARTED"
And the up time of "Cisco Bulk Provisioning Service" service should be less than 1 minute

Scenario: Start "Cisco Serviceability Reporter" service
When we submit a request to start "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Serviceability Reporter" service should be "STARTED"

Scenario: Stop "Cisco Serviceability Reporter" service
When we submit a request to start "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Serviceability Reporter" service should be "STOPPED"

Scenario: Restart "Cisco Serviceability Reporter" service
When we submit a request to restart "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Serviceability Reporter" service should be "STARTED"
And the up time of "Cisco Serviceability Reporter" service should be less than 1 minute

Scenario: Start "Cisco SIP Proxy" service
When we submit a request to start "Cisco SIP Proxy" service
And the "Cisco SIP Proxy" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco SIP Proxy" service should be "STARTED"

Scenario: Stop "Cisco SIP Proxy" service
When we submit a request to start "Cisco SIP Proxy" service
And the "Cisco SIP Proxy" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco SIP Proxy" service should be "STOPPED"

Scenario: Restart "Cisco SIP Proxy" service
When we submit a request to restart "Cisco SIP Proxy" service
And the "Cisco SIP Proxy" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco SIP Proxy" service should be "STARTED"
And the up time of "Cisco SIP Proxy" service should be less than 1 minute

Scenario: Start "Cisco Presence Engine" service
When we submit a request to start "Cisco Presence Engine" service
And the "Cisco Presence Engine" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Presence Engine" service should be "STARTED"

Scenario: Stop "Cisco Presence Engine" service
When we submit a request to start "Cisco Presence Engine" service
And the "Cisco Presence Engine" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Presence Engine" service should be "STOPPED"

Scenario: Restart "Cisco Presence Engine" service
When we submit a request to restart "Cisco Presence Engine" service
And the "Cisco Presence Engine" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Presence Engine" service should be "STARTED"
And the up time of "Cisco Presence Engine" service should be less than 1 minute

Scenario: Start "Cisco XCP Text Conference Manager" service
When we submit a request to start "Cisco XCP Text Conference Manager" service
And the "Cisco XCP Text Conference Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco XCP Text Conference Manager" service should be "STARTED"

Scenario: Stop "Cisco XCP Text Conference Manager" service
When we submit a request to start "Cisco XCP Text Conference Manager" service
And the "Cisco XCP Text Conference Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco XCP Text Conference Manager" service should be "STOPPED"

Scenario: Restart "Cisco XCP Text Conference Manager" service
When we submit a request to restart "Cisco XCP Text Conference Manager" service
And the "Cisco XCP Text Conference Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco XCP Text Conference Manager" service should be "STARTED"
And the up time of "Cisco XCP Text Conference Manager" service should be less than 1 minute

Scenario: Start "Cisco XCP Web Connection Manager" service
When we submit a request to start "Cisco XCP Web Connection Manager" service
And the "Cisco XCP Web Connection Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco XCP Web Connection Manager" service should be "STARTED"

Scenario: Stop "Cisco XCP Web Connection Manager" service
When we submit a request to start "Cisco XCP Web Connection Manager" service
And the "Cisco XCP Web Connection Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco XCP Web Connection Manager" service should be "STOPPED"

Scenario: Restart "Cisco XCP Web Connection Manager" service
When we submit a request to restart "Cisco XCP Web Connection Manager" service
And the "Cisco XCP Web Connection Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco XCP Web Connection Manager" service should be "STARTED"
And the up time of "Cisco XCP Web Connection Manager" service should be less than 1 minute

Scenario: Start "Cisco XCP Connection Manager" service
When we submit a request to start "Cisco XCP Connection Manager" service
And the "Cisco XCP Connection Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco XCP Connection Manager" service should be "STARTED"

Scenario: Stop "Cisco XCP Connection Manager" service
When we submit a request to start "Cisco XCP Connection Manager" service
And the "Cisco XCP Connection Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco XCP Connection Manager" service should be "STOPPED"

Scenario: Restart "Cisco XCP Connection Manager" service
When we submit a request to restart "Cisco XCP Connection Manager" service
And the "Cisco XCP Connection Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco XCP Connection Manager" service should be "STARTED"
And the up time of "Cisco XCP Connection Manager" service should be less than 1 minute

Scenario: Start "Cisco XCP SIP Federation Connection Manager" service
When we submit a request to start "Cisco XCP SIP Federation Connection Manager" service
And the "Cisco XCP SIP Federation Connection Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco XCP SIP Federation Connection Manager" service should be "STARTED"

Scenario: Stop "Cisco XCP SIP Federation Connection Manager" service
When we submit a request to start "Cisco XCP SIP Federation Connection Manager" service
And the "Cisco XCP SIP Federation Connection Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco XCP SIP Federation Connection Manager" service should be "STOPPED"

Scenario: Restart "Cisco XCP SIP Federation Connection Manager" service
When we submit a request to restart "Cisco XCP SIP Federation Connection Manager" service
And the "Cisco XCP SIP Federation Connection Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco XCP SIP Federation Connection Manager" service should be "STARTED"
And the up time of "Cisco XCP SIP Federation Connection Manager" service should be less than 1 minute

Scenario: Start "Cisco XCP XMPP Federation Connection Manager" service
When we submit a request to start "Cisco XCP XMPP Federation Connection Manager" service
And the "Cisco XCP XMPP Federation Connection Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco XCP XMPP Federation Connection Manager" service should be "STARTED"

Scenario: Stop "Cisco XCP XMPP Federation Connection Manager" service
When we submit a request to start "Cisco XCP XMPP Federation Connection Manager" service
And the "Cisco XCP XMPP Federation Connection Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco XCP XMPP Federation Connection Manager" service should be "STOPPED"

Scenario: Restart "Cisco XCP XMPP Federation Connection Manager" service
When we submit a request to restart "Cisco XCP XMPP Federation Connection Manager" service
And the "Cisco XCP XMPP Federation Connection Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco XCP XMPP Federation Connection Manager" service should be "STARTED"
And the up time of "Cisco XCP XMPP Federation Connection Manager" service should be less than 1 minute

Scenario: Start "Cisco XCP Message Archiver" service
When we submit a request to start "Cisco XCP Message Archiver" service
And the "Cisco XCP Message Archiver" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco XCP Message Archiver" service should be "STARTED"

Scenario: Stop "Cisco XCP Message Archiver" service
When we submit a request to start "Cisco XCP Message Archiver" service
And the "Cisco XCP Message Archiver" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco XCP Message Archiver" service should be "STOPPED"

Scenario: Restart "Cisco XCP Message Archiver" service
When we submit a request to restart "Cisco XCP Message Archiver" service
And the "Cisco XCP Message Archiver" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco XCP Message Archiver" service should be "STARTED"
And the up time of "Cisco XCP Message Archiver" service should be less than 1 minute

Scenario: Start "Cisco XCP Directory Service" service
When we submit a request to start "Cisco XCP Directory Service" service
And the "Cisco XCP Directory Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco XCP Directory Service" service should be "STARTED"

Scenario: Stop "Cisco XCP Directory Service" service
When we submit a request to start "Cisco XCP Directory Service" service
And the "Cisco XCP Directory Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco XCP Directory Service" service should be "STOPPED"

Scenario: Restart "Cisco XCP Directory Service" service
When we submit a request to restart "Cisco XCP Directory Service" service
And the "Cisco XCP Directory Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco XCP Directory Service" service should be "STARTED"
And the up time of "Cisco XCP Directory Service" service should be less than 1 minute

Scenario: Start "Cisco XCP Authentication Service" service
When we submit a request to start "Cisco XCP Authentication Service" service
And the "Cisco XCP Authentication Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco XCP Authentication Service" service should be "STARTED"

Scenario: Stop "Cisco XCP Authentication Service" service
When we submit a request to start "Cisco XCP Authentication Service" service
And the "Cisco XCP Authentication Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco XCP Authentication Service" service should be "STOPPED"

Scenario: Restart "Cisco XCP Authentication Service" service
When we submit a request to restart "Cisco XCP Authentication Service" service
And the "Cisco XCP Authentication Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco XCP Authentication Service" service should be "STARTED"
And the up time of "Cisco XCP Authentication Service" service should be less than 1 minute

Scenario: Start "Cisco CallManager Serviceability RTMT" service
When we submit a request to start "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CallManager Serviceability RTMT" service should be "STARTED"

Scenario: Stop "Cisco CallManager Serviceability RTMT" service
When we submit a request to start "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CallManager Serviceability RTMT" service should be "STOPPED"

Scenario: Restart "Cisco CallManager Serviceability RTMT" service
When we submit a request to restart "Cisco CallManager Serviceability RTMT" service
And the "Cisco CallManager Serviceability RTMT" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CallManager Serviceability RTMT" service should be "STARTED"
And the up time of "Cisco CallManager Serviceability RTMT" service should be less than 1 minute

Scenario: Start "Cisco RTMT Reporter Servlet" service
When we submit a request to start "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco RTMT Reporter Servlet" service should be "STARTED"

Scenario: Stop "Cisco RTMT Reporter Servlet" service
When we submit a request to start "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco RTMT Reporter Servlet" service should be "STOPPED"

Scenario: Restart "Cisco RTMT Reporter Servlet" service
When we submit a request to restart "Cisco RTMT Reporter Servlet" service
And the "Cisco RTMT Reporter Servlet" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco RTMT Reporter Servlet" service should be "STARTED"
And the up time of "Cisco RTMT Reporter Servlet" service should be less than 1 minute

Scenario: Start "Cisco Log Partition Monitoring Tool" service
When we submit a request to start "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Log Partition Monitoring Tool" service should be "STARTED"

Scenario: Stop "Cisco Log Partition Monitoring Tool" service
When we submit a request to start "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Log Partition Monitoring Tool" service should be "STOPPED"

Scenario: Restart "Cisco Log Partition Monitoring Tool" service
When we submit a request to restart "Cisco Log Partition Monitoring Tool" service
And the "Cisco Log Partition Monitoring Tool" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Log Partition Monitoring Tool" service should be "STARTED"
And the up time of "Cisco Log Partition Monitoring Tool" service should be less than 1 minute

Scenario: Start "Cisco Tomcat Stats Servlet" service
When we submit a request to start "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Tomcat Stats Servlet" service should be "STARTED"

Scenario: Stop "Cisco Tomcat Stats Servlet" service
When we submit a request to start "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Tomcat Stats Servlet" service should be "STOPPED"

Scenario: Restart "Cisco Tomcat Stats Servlet" service
When we submit a request to restart "Cisco Tomcat Stats Servlet" service
And the "Cisco Tomcat Stats Servlet" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Tomcat Stats Servlet" service should be "STARTED"
And the up time of "Cisco Tomcat Stats Servlet" service should be less than 1 minute

Scenario: Start "Cisco RIS Data Collector" service
When we submit a request to start "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco RIS Data Collector" service should be "STARTED"

Scenario: Stop "Cisco RIS Data Collector" service
When we submit a request to start "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco RIS Data Collector" service should be "STOPPED"

Scenario: Restart "Cisco RIS Data Collector" service
When we submit a request to restart "Cisco RIS Data Collector" service
And the "Cisco RIS Data Collector" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco RIS Data Collector" service should be "STARTED"
And the up time of "Cisco RIS Data Collector" service should be less than 1 minute

Scenario: Start "Cisco AMC Service" service
When we submit a request to start "Cisco AMC Service" service
And the "Cisco AMC Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco AMC Service" service should be "STARTED"

Scenario: Stop "Cisco AMC Service" service
When we submit a request to start "Cisco AMC Service" service
And the "Cisco AMC Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco AMC Service" service should be "STOPPED"

Scenario: Restart "Cisco AMC Service" service
When we submit a request to restart "Cisco AMC Service" service
And the "Cisco AMC Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco AMC Service" service should be "STARTED"
And the up time of "Cisco AMC Service" service should be less than 1 minute

Scenario: Start "Cisco Audit Event Service" service
When we submit a request to start "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Audit Event Service" service should be "STARTED"

Scenario: Stop "Cisco Audit Event Service" service
When we submit a request to start "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Audit Event Service" service should be "STOPPED"

Scenario: Restart "Cisco Audit Event Service" service
When we submit a request to restart "Cisco Audit Event Service" service
And the "Cisco Audit Event Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Audit Event Service" service should be "STARTED"
And the up time of "Cisco Audit Event Service" service should be less than 1 minute

Scenario: Start "Platform Administrative Web Service" service
When we submit a request to start "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Platform Administrative Web Service" service should be "STARTED"

Scenario: Stop "Platform Administrative Web Service" service
When we submit a request to start "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Platform Administrative Web Service" service should be "STOPPED"

Scenario: Restart "Platform Administrative Web Service" service
When we submit a request to restart "Platform Administrative Web Service" service
And the "Platform Administrative Web Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Platform Administrative Web Service" service should be "STARTED"
And the up time of "Platform Administrative Web Service" service should be less than 1 minute

Scenario: Start "A Cisco DB" service
When we submit a request to start "A Cisco DB" service
And the "A Cisco DB" service is "stopped"
Then we should receive "STARTED" message
And the status of "A Cisco DB" service should be "STARTED"

Scenario: Stop "A Cisco DB" service
When we submit a request to start "A Cisco DB" service
And the "A Cisco DB" service is "stopped"
Then we should receive "STOPPED" message
And the status of "A Cisco DB" service should be "STOPPED"

Scenario: Restart "A Cisco DB" service
When we submit a request to restart "A Cisco DB" service
And the "A Cisco DB" service is "started"
Then we should receive "RESTARTED" message
And the status of "A Cisco DB" service should be "STARTED"
And the up time of "A Cisco DB" service should be less than 1 minute

Scenario: Start "A Cisco DB Replicator" service
When we submit a request to start "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "stopped"
Then we should receive "STARTED" message
And the status of "A Cisco DB Replicator" service should be "STARTED"

Scenario: Stop "A Cisco DB Replicator" service
When we submit a request to start "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "stopped"
Then we should receive "STOPPED" message
And the status of "A Cisco DB Replicator" service should be "STOPPED"

Scenario: Restart "A Cisco DB Replicator" service
When we submit a request to restart "A Cisco DB Replicator" service
And the "A Cisco DB Replicator" service is "started"
Then we should receive "RESTARTED" message
And the status of "A Cisco DB Replicator" service should be "STARTED"
And the up time of "A Cisco DB Replicator" service should be less than 1 minute

Scenario: Start "SNMP Master Agent" service
When we submit a request to start "SNMP Master Agent" service
And the "SNMP Master Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "SNMP Master Agent" service should be "STARTED"

Scenario: Stop "SNMP Master Agent" service
When we submit a request to start "SNMP Master Agent" service
And the "SNMP Master Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "SNMP Master Agent" service should be "STOPPED"

Scenario: Restart "SNMP Master Agent" service
When we submit a request to restart "SNMP Master Agent" service
And the "SNMP Master Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "SNMP Master Agent" service should be "STARTED"
And the up time of "SNMP Master Agent" service should be less than 1 minute

Scenario: Start "MIB2 Agent" service
When we submit a request to start "MIB2 Agent" service
And the "MIB2 Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "MIB2 Agent" service should be "STARTED"

Scenario: Stop "MIB2 Agent" service
When we submit a request to start "MIB2 Agent" service
And the "MIB2 Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "MIB2 Agent" service should be "STOPPED"

Scenario: Restart "MIB2 Agent" service
When we submit a request to restart "MIB2 Agent" service
And the "MIB2 Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "MIB2 Agent" service should be "STARTED"
And the up time of "MIB2 Agent" service should be less than 1 minute

Scenario: Start "Host Resources Agent" service
When we submit a request to start "Host Resources Agent" service
And the "Host Resources Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Host Resources Agent" service should be "STARTED"

Scenario: Stop "Host Resources Agent" service
When we submit a request to start "Host Resources Agent" service
And the "Host Resources Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Host Resources Agent" service should be "STOPPED"

Scenario: Restart "Host Resources Agent" service
When we submit a request to restart "Host Resources Agent" service
And the "Host Resources Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Host Resources Agent" service should be "STARTED"
And the up time of "Host Resources Agent" service should be less than 1 minute

Scenario: Start "System Application Agent" service
When we submit a request to start "System Application Agent" service
And the "System Application Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "System Application Agent" service should be "STARTED"

Scenario: Stop "System Application Agent" service
When we submit a request to start "System Application Agent" service
And the "System Application Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "System Application Agent" service should be "STOPPED"

Scenario: Restart "System Application Agent" service
When we submit a request to restart "System Application Agent" service
And the "System Application Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "System Application Agent" service should be "STARTED"
And the up time of "System Application Agent" service should be less than 1 minute

Scenario: Start "Cisco CDP Agent" service
When we submit a request to start "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CDP Agent" service should be "STARTED"

Scenario: Stop "Cisco CDP Agent" service
When we submit a request to start "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CDP Agent" service should be "STOPPED"

Scenario: Restart "Cisco CDP Agent" service
When we submit a request to restart "Cisco CDP Agent" service
And the "Cisco CDP Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CDP Agent" service should be "STARTED"
And the up time of "Cisco CDP Agent" service should be less than 1 minute

Scenario: Start "Cisco Syslog Agent" service
When we submit a request to start "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Syslog Agent" service should be "STARTED"

Scenario: Stop "Cisco Syslog Agent" service
When we submit a request to start "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Syslog Agent" service should be "STOPPED"

Scenario: Restart "Cisco Syslog Agent" service
When we submit a request to restart "Cisco Syslog Agent" service
And the "Cisco Syslog Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Syslog Agent" service should be "STARTED"
And the up time of "Cisco Syslog Agent" service should be less than 1 minute

Scenario: Start "Cisco Certificate Expiry Monitor" service
When we submit a request to start "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Certificate Expiry Monitor" service should be "STARTED"

Scenario: Stop "Cisco Certificate Expiry Monitor" service
When we submit a request to start "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Certificate Expiry Monitor" service should be "STOPPED"

Scenario: Restart "Cisco Certificate Expiry Monitor" service
When we submit a request to restart "Cisco Certificate Expiry Monitor" service
And the "Cisco Certificate Expiry Monitor" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Certificate Expiry Monitor" service should be "STARTED"
And the up time of "Cisco Certificate Expiry Monitor" service should be less than 1 minute

Scenario: Start "Cisco Certificate Change Notification" service
When we submit a request to start "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Certificate Change Notification" service should be "STARTED"

Scenario: Stop "Cisco Certificate Change Notification" service
When we submit a request to start "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Certificate Change Notification" service should be "STOPPED"

Scenario: Restart "Cisco Certificate Change Notification" service
When we submit a request to restart "Cisco Certificate Change Notification" service
And the "Cisco Certificate Change Notification" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Certificate Change Notification" service should be "STARTED"
And the up time of "Cisco Certificate Change Notification" service should be less than 1 minute

Scenario: Start "Cisco ELM Client Service" service
When we submit a request to start "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco ELM Client Service" service should be "STARTED"

Scenario: Stop "Cisco ELM Client Service" service
When we submit a request to start "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco ELM Client Service" service should be "STOPPED"

Scenario: Restart "Cisco ELM Client Service" service
When we submit a request to restart "Cisco ELM Client Service" service
And the "Cisco ELM Client Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco ELM Client Service" service should be "STARTED"
And the up time of "Cisco ELM Client Service" service should be less than 1 minute

Scenario: Start "Cisco Tomcat" service
When we submit a request to start "Cisco Tomcat" service
And the "Cisco Tomcat" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Tomcat" service should be "STARTED"

Scenario: Stop "Cisco Tomcat" service
When we submit a request to start "Cisco Tomcat" service
And the "Cisco Tomcat" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Tomcat" service should be "STOPPED"

Scenario: Restart "Cisco Tomcat" service
When we submit a request to restart "Cisco Tomcat" service
And the "Cisco Tomcat" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Tomcat" service should be "STARTED"
And the up time of "Cisco Tomcat" service should be less than 1 minute

Scenario: Start "Cisco License Manager" service
When we submit a request to start "Cisco License Manager" service
And the "Cisco License Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco License Manager" service should be "STARTED"

Scenario: Stop "Cisco License Manager" service
When we submit a request to start "Cisco License Manager" service
And the "Cisco License Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco License Manager" service should be "STOPPED"

Scenario: Restart "Cisco License Manager" service
When we submit a request to restart "Cisco License Manager" service
And the "Cisco License Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco License Manager" service should be "STARTED"
And the up time of "Cisco License Manager" service should be less than 1 minute

Scenario: Start "Cisco CallManager Serviceability" service
When we submit a request to start "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CallManager Serviceability" service should be "STARTED"

Scenario: Stop "Cisco CallManager Serviceability" service
When we submit a request to start "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CallManager Serviceability" service should be "STOPPED"

Scenario: Restart "Cisco CallManager Serviceability" service
When we submit a request to restart "Cisco CallManager Serviceability" service
And the "Cisco CallManager Serviceability" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CallManager Serviceability" service should be "STARTED"
And the up time of "Cisco CallManager Serviceability" service should be less than 1 minute

Scenario: Start "Cisco CDP" service
When we submit a request to start "Cisco CDP" service
And the "Cisco CDP" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco CDP" service should be "STARTED"

Scenario: Stop "Cisco CDP" service
When we submit a request to start "Cisco CDP" service
And the "Cisco CDP" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco CDP" service should be "STOPPED"

Scenario: Restart "Cisco CDP" service
When we submit a request to restart "Cisco CDP" service
And the "Cisco CDP" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco CDP" service should be "STARTED"
And the up time of "Cisco CDP" service should be less than 1 minute

Scenario: Start "Cisco Trace Collection Servlet" service
When we submit a request to start "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Trace Collection Servlet" service should be "STARTED"

Scenario: Stop "Cisco Trace Collection Servlet" service
When we submit a request to start "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Trace Collection Servlet" service should be "STOPPED"

Scenario: Restart "Cisco Trace Collection Servlet" service
When we submit a request to restart "Cisco Trace Collection Servlet" service
And the "Cisco Trace Collection Servlet" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Trace Collection Servlet" service should be "STARTED"
And the up time of "Cisco Trace Collection Servlet" service should be less than 1 minute

Scenario: Start "Cisco Trace Collection Service" service
When we submit a request to start "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Trace Collection Service" service should be "STARTED"

Scenario: Stop "Cisco Trace Collection Service" service
When we submit a request to start "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Trace Collection Service" service should be "STOPPED"

Scenario: Restart "Cisco Trace Collection Service" service
When we submit a request to restart "Cisco Trace Collection Service" service
And the "Cisco Trace Collection Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Trace Collection Service" service should be "STARTED"
And the up time of "Cisco Trace Collection Service" service should be less than 1 minute

Scenario: Start "Cisco Database Layer Monitor" service
When we submit a request to start "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Database Layer Monitor" service should be "STARTED"

Scenario: Stop "Cisco Database Layer Monitor" service
When we submit a request to start "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Database Layer Monitor" service should be "STOPPED"

Scenario: Restart "Cisco Database Layer Monitor" service
When we submit a request to restart "Cisco Database Layer Monitor" service
And the "Cisco Database Layer Monitor" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Database Layer Monitor" service should be "STARTED"
And the up time of "Cisco Database Layer Monitor" service should be less than 1 minute

Scenario: Start "Cisco IM and Presence Admin" service
When we submit a request to start "Cisco IM and Presence Admin" service
And the "Cisco IM and Presence Admin" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco IM and Presence Admin" service should be "STARTED"

Scenario: Stop "Cisco IM and Presence Admin" service
When we submit a request to start "Cisco IM and Presence Admin" service
And the "Cisco IM and Presence Admin" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco IM and Presence Admin" service should be "STOPPED"

Scenario: Restart "Cisco IM and Presence Admin" service
When we submit a request to restart "Cisco IM and Presence Admin" service
And the "Cisco IM and Presence Admin" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco IM and Presence Admin" service should be "STARTED"
And the up time of "Cisco IM and Presence Admin" service should be less than 1 minute

Scenario: Start "SOAP -Real-Time Service APIs" service
When we submit a request to start "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "stopped"
Then we should receive "STARTED" message
And the status of "SOAP -Real-Time Service APIs" service should be "STARTED"

Scenario: Stop "SOAP -Real-Time Service APIs" service
When we submit a request to start "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "stopped"
Then we should receive "STOPPED" message
And the status of "SOAP -Real-Time Service APIs" service should be "STOPPED"

Scenario: Restart "SOAP -Real-Time Service APIs" service
When we submit a request to restart "SOAP -Real-Time Service APIs" service
And the "SOAP -Real-Time Service APIs" service is "started"
Then we should receive "RESTARTED" message
And the status of "SOAP -Real-Time Service APIs" service should be "STARTED"
And the up time of "SOAP -Real-Time Service APIs" service should be less than 1 minute

Scenario: Start "SOAP -Performance Monitoring APIs" service
When we submit a request to start "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "stopped"
Then we should receive "STARTED" message
And the status of "SOAP -Performance Monitoring APIs" service should be "STARTED"

Scenario: Stop "SOAP -Performance Monitoring APIs" service
When we submit a request to start "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "stopped"
Then we should receive "STOPPED" message
And the status of "SOAP -Performance Monitoring APIs" service should be "STOPPED"

Scenario: Restart "SOAP -Performance Monitoring APIs" service
When we submit a request to restart "SOAP -Performance Monitoring APIs" service
And the "SOAP -Performance Monitoring APIs" service is "started"
Then we should receive "RESTARTED" message
And the status of "SOAP -Performance Monitoring APIs" service should be "STARTED"
And the up time of "SOAP -Performance Monitoring APIs" service should be less than 1 minute

Scenario: Start "SOAP -Log Collection APIs" service
When we submit a request to start "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "stopped"
Then we should receive "STARTED" message
And the status of "SOAP -Log Collection APIs" service should be "STARTED"

Scenario: Stop "SOAP -Log Collection APIs" service
When we submit a request to start "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "stopped"
Then we should receive "STOPPED" message
And the status of "SOAP -Log Collection APIs" service should be "STOPPED"

Scenario: Restart "SOAP -Log Collection APIs" service
When we submit a request to restart "SOAP -Log Collection APIs" service
And the "SOAP -Log Collection APIs" service is "started"
Then we should receive "RESTARTED" message
And the status of "SOAP -Log Collection APIs" service should be "STARTED"
And the up time of "SOAP -Log Collection APIs" service should be less than 1 minute

Scenario: Start "Cisco DRF Local" service
When we submit a request to start "Cisco DRF Local" service
And the "Cisco DRF Local" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco DRF Local" service should be "STARTED"

Scenario: Stop "Cisco DRF Local" service
When we submit a request to start "Cisco DRF Local" service
And the "Cisco DRF Local" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco DRF Local" service should be "STOPPED"

Scenario: Restart "Cisco DRF Local" service
When we submit a request to restart "Cisco DRF Local" service
And the "Cisco DRF Local" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco DRF Local" service should be "STARTED"
And the up time of "Cisco DRF Local" service should be less than 1 minute

Scenario: Start "Cisco Sync Agent" service
When we submit a request to start "Cisco Sync Agent" service
And the "Cisco Sync Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Sync Agent" service should be "STARTED"

Scenario: Stop "Cisco Sync Agent" service
When we submit a request to start "Cisco Sync Agent" service
And the "Cisco Sync Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Sync Agent" service should be "STOPPED"

Scenario: Restart "Cisco Sync Agent" service
When we submit a request to restart "Cisco Sync Agent" service
And the "Cisco Sync Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Sync Agent" service should be "STARTED"
And the up time of "Cisco Sync Agent" service should be less than 1 minute

Scenario: Start "Cisco Login Datastore" service
When we submit a request to start "Cisco Login Datastore" service
And the "Cisco Login Datastore" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Login Datastore" service should be "STARTED"

Scenario: Stop "Cisco Login Datastore" service
When we submit a request to start "Cisco Login Datastore" service
And the "Cisco Login Datastore" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Login Datastore" service should be "STOPPED"

Scenario: Restart "Cisco Login Datastore" service
When we submit a request to restart "Cisco Login Datastore" service
And the "Cisco Login Datastore" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Login Datastore" service should be "STARTED"
And the up time of "Cisco Login Datastore" service should be less than 1 minute

Scenario: Start "Cisco Route Datastore" service
When we submit a request to start "Cisco Route Datastore" service
And the "Cisco Route Datastore" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Route Datastore" service should be "STARTED"

Scenario: Stop "Cisco Route Datastore" service
When we submit a request to start "Cisco Route Datastore" service
And the "Cisco Route Datastore" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Route Datastore" service should be "STOPPED"

Scenario: Restart "Cisco Route Datastore" service
When we submit a request to restart "Cisco Route Datastore" service
And the "Cisco Route Datastore" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Route Datastore" service should be "STARTED"
And the up time of "Cisco Route Datastore" service should be less than 1 minute

Scenario: Start "Cisco Config Agent" service
When we submit a request to start "Cisco Config Agent" service
And the "Cisco Config Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Config Agent" service should be "STARTED"

Scenario: Stop "Cisco Config Agent" service
When we submit a request to start "Cisco Config Agent" service
And the "Cisco Config Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Config Agent" service should be "STOPPED"

Scenario: Restart "Cisco Config Agent" service
When we submit a request to restart "Cisco Config Agent" service
And the "Cisco Config Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Config Agent" service should be "STARTED"
And the up time of "Cisco Config Agent" service should be less than 1 minute

Scenario: Start "Cisco OAM Agent" service
When we submit a request to start "Cisco OAM Agent" service
And the "Cisco OAM Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco OAM Agent" service should be "STARTED"

Scenario: Stop "Cisco OAM Agent" service
When we submit a request to start "Cisco OAM Agent" service
And the "Cisco OAM Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco OAM Agent" service should be "STOPPED"

Scenario: Restart "Cisco OAM Agent" service
When we submit a request to restart "Cisco OAM Agent" service
And the "Cisco OAM Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco OAM Agent" service should be "STARTED"
And the up time of "Cisco OAM Agent" service should be less than 1 minute

Scenario: Start "Cisco Client Profile Agent" service
When we submit a request to start "Cisco Client Profile Agent" service
And the "Cisco Client Profile Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Client Profile Agent" service should be "STARTED"

Scenario: Stop "Cisco Client Profile Agent" service
When we submit a request to start "Cisco Client Profile Agent" service
And the "Cisco Client Profile Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Client Profile Agent" service should be "STOPPED"

Scenario: Restart "Cisco Client Profile Agent" service
When we submit a request to restart "Cisco Client Profile Agent" service
And the "Cisco Client Profile Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Client Profile Agent" service should be "STARTED"
And the up time of "Cisco Client Profile Agent" service should be less than 1 minute

Scenario: Start "Cisco Intercluster Sync Agent" service
When we submit a request to start "Cisco Intercluster Sync Agent" service
And the "Cisco Intercluster Sync Agent" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Intercluster Sync Agent" service should be "STARTED"

Scenario: Stop "Cisco Intercluster Sync Agent" service
When we submit a request to start "Cisco Intercluster Sync Agent" service
And the "Cisco Intercluster Sync Agent" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Intercluster Sync Agent" service should be "STOPPED"

Scenario: Restart "Cisco Intercluster Sync Agent" service
When we submit a request to restart "Cisco Intercluster Sync Agent" service
And the "Cisco Intercluster Sync Agent" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Intercluster Sync Agent" service should be "STARTED"
And the up time of "Cisco Intercluster Sync Agent" service should be less than 1 minute

Scenario: Start "Cisco XCP Config Manager" service
When we submit a request to start "Cisco XCP Config Manager" service
And the "Cisco XCP Config Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco XCP Config Manager" service should be "STARTED"

Scenario: Stop "Cisco XCP Config Manager" service
When we submit a request to start "Cisco XCP Config Manager" service
And the "Cisco XCP Config Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco XCP Config Manager" service should be "STOPPED"

Scenario: Restart "Cisco XCP Config Manager" service
When we submit a request to restart "Cisco XCP Config Manager" service
And the "Cisco XCP Config Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco XCP Config Manager" service should be "STARTED"
And the up time of "Cisco XCP Config Manager" service should be less than 1 minute

Scenario: Start "Cisco XCP Router" service
When we submit a request to start "Cisco XCP Router" service
And the "Cisco XCP Router" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco XCP Router" service should be "STARTED"

Scenario: Stop "Cisco XCP Router" service
When we submit a request to start "Cisco XCP Router" service
And the "Cisco XCP Router" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco XCP Router" service should be "STOPPED"

Scenario: Restart "Cisco XCP Router" service
When we submit a request to restart "Cisco XCP Router" service
And the "Cisco XCP Router" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco XCP Router" service should be "STARTED"
And the up time of "Cisco XCP Router" service should be less than 1 minute

Scenario: Start "Cisco Server Recovery Manager" service
When we submit a request to start "Cisco Server Recovery Manager" service
And the "Cisco Server Recovery Manager" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Server Recovery Manager" service should be "STARTED"

Scenario: Stop "Cisco Server Recovery Manager" service
When we submit a request to start "Cisco Server Recovery Manager" service
And the "Cisco Server Recovery Manager" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Server Recovery Manager" service should be "STOPPED"

Scenario: Restart "Cisco Server Recovery Manager" service
When we submit a request to restart "Cisco Server Recovery Manager" service
And the "Cisco Server Recovery Manager" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Server Recovery Manager" service should be "STARTED"
And the up time of "Cisco Server Recovery Manager" service should be less than 1 minute

Scenario: Start "Cisco IM and Presence Data Monitor" service
When we submit a request to start "Cisco IM and Presence Data Monitor" service
And the "Cisco IM and Presence Data Monitor" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco IM and Presence Data Monitor" service should be "STARTED"

Scenario: Stop "Cisco IM and Presence Data Monitor" service
When we submit a request to start "Cisco IM and Presence Data Monitor" service
And the "Cisco IM and Presence Data Monitor" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco IM and Presence Data Monitor" service should be "STOPPED"

Scenario: Restart "Cisco IM and Presence Data Monitor" service
When we submit a request to restart "Cisco IM and Presence Data Monitor" service
And the "Cisco IM and Presence Data Monitor" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco IM and Presence Data Monitor" service should be "STARTED"
And the up time of "Cisco IM and Presence Data Monitor" service should be less than 1 minute

Scenario: Start "Cisco Presence Datastore" service
When we submit a request to start "Cisco Presence Datastore" service
And the "Cisco Presence Datastore" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco Presence Datastore" service should be "STARTED"

Scenario: Stop "Cisco Presence Datastore" service
When we submit a request to start "Cisco Presence Datastore" service
And the "Cisco Presence Datastore" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco Presence Datastore" service should be "STOPPED"

Scenario: Restart "Cisco Presence Datastore" service
When we submit a request to restart "Cisco Presence Datastore" service
And the "Cisco Presence Datastore" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco Presence Datastore" service should be "STARTED"
And the up time of "Cisco Presence Datastore" service should be less than 1 minute

Scenario: Start "Cisco SIP Registration Datastore" service
When we submit a request to start "Cisco SIP Registration Datastore" service
And the "Cisco SIP Registration Datastore" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco SIP Registration Datastore" service should be "STARTED"

Scenario: Stop "Cisco SIP Registration Datastore" service
When we submit a request to start "Cisco SIP Registration Datastore" service
And the "Cisco SIP Registration Datastore" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco SIP Registration Datastore" service should be "STOPPED"

Scenario: Restart "Cisco SIP Registration Datastore" service
When we submit a request to restart "Cisco SIP Registration Datastore" service
And the "Cisco SIP Registration Datastore" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco SIP Registration Datastore" service should be "STARTED"
And the up time of "Cisco SIP Registration Datastore" service should be less than 1 minute

Scenario: Start "Cisco RCC Device Selection Service" service
When we submit a request to start "Cisco RCC Device Selection Service" service
And the "Cisco RCC Device Selection Service" service is "stopped"
Then we should receive "STARTED" message
And the status of "Cisco RCC Device Selection Service" service should be "STARTED"

Scenario: Stop "Cisco RCC Device Selection Service" service
When we submit a request to start "Cisco RCC Device Selection Service" service
And the "Cisco RCC Device Selection Service" service is "stopped"
Then we should receive "STOPPED" message
And the status of "Cisco RCC Device Selection Service" service should be "STOPPED"

Scenario: Restart "Cisco RCC Device Selection Service" service
When we submit a request to restart "Cisco RCC Device Selection Service" service
And the "Cisco RCC Device Selection Service" service is "started"
Then we should receive "RESTARTED" message
And the status of "Cisco RCC Device Selection Service" service should be "STARTED"
And the up time of "Cisco RCC Device Selection Service" service should be less than 1 minute

################################ Valid input -- Activate/Deactivate Services

Scenario: Activate "Cisco AXL Web Service" service
When we submit a request to activate "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco AXL Web Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco AXL Web Service" service
When we submit a request to deactivate "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco AXL Web Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco UXL Web Service" service
When we submit a request to activate "Cisco UXL Web Service" service
And the "Cisco UXL Web Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco UXL Web Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco UXL Web Service" service
When we submit a request to deactivate "Cisco UXL Web Service" service
And the "Cisco UXL Web Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco UXL Web Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco Bulk Provisioning Service" service
When we submit a request to activate "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Bulk Provisioning Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Bulk Provisioning Service" service
When we submit a request to deactivate "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Bulk Provisioning Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco TAPS Service" service
When we submit a request to activate "Cisco TAPS Service" service
And the "Cisco TAPS Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco TAPS Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco TAPS Service" service
When we submit a request to deactivate "Cisco TAPS Service" service
And the "Cisco TAPS Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco TAPS Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco Serviceability Reporter" service
When we submit a request to activate "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Serviceability Reporter" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Serviceability Reporter" service
When we submit a request to deactivate "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Serviceability Reporter" service should be "DEACTIVATED"

Scenario: Activate "Cisco CallManager SNMP Service" service
When we submit a request to activate "Cisco CallManager SNMP Service" service
And the "Cisco CallManager SNMP Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco CallManager SNMP Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco CallManager SNMP Service" service
When we submit a request to deactivate "Cisco CallManager SNMP Service" service
And the "Cisco CallManager SNMP Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco CallManager SNMP Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco CTL Provider" service
When we submit a request to activate "Cisco CTL Provider" service
And the "Cisco CTL Provider" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco CTL Provider" service should be "ACTIVATED"

Scenario: Deactivate "Cisco CTL Provider" service
When we submit a request to deactivate "Cisco CTL Provider" service
And the "Cisco CTL Provider" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco CTL Provider" service should be "DEACTIVATED"

Scenario: Activate "Cisco Certificate Authority Proxy Function" service
When we submit a request to activate "Cisco Certificate Authority Proxy Function" service
And the "Cisco Certificate Authority Proxy Function" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Certificate Authority Proxy Function" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Certificate Authority Proxy Function" service
When we submit a request to deactivate "Cisco Certificate Authority Proxy Function" service
And the "Cisco Certificate Authority Proxy Function" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Certificate Authority Proxy Function" service should be "DEACTIVATED"

Scenario: Activate "Cisco DirSync" service
When we submit a request to activate "Cisco DirSync" service
And the "Cisco DirSync" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco DirSync" service should be "ACTIVATED"

Scenario: Deactivate "Cisco DirSync" service
When we submit a request to deactivate "Cisco DirSync" service
And the "Cisco DirSync" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco DirSync" service should be "DEACTIVATED"

Scenario: Activate "Cisco Intercluster Lookup Service" service
When we submit a request to activate "Cisco Intercluster Lookup Service" service
And the "Cisco Intercluster Lookup Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Intercluster Lookup Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Intercluster Lookup Service" service
When we submit a request to deactivate "Cisco Intercluster Lookup Service" service
And the "Cisco Intercluster Lookup Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Intercluster Lookup Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco Location Bandwidth Manager" service
When we submit a request to activate "Cisco Location Bandwidth Manager" service
And the "Cisco Location Bandwidth Manager" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Location Bandwidth Manager" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Location Bandwidth Manager" service
When we submit a request to deactivate "Cisco Location Bandwidth Manager" service
And the "Cisco Location Bandwidth Manager" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Location Bandwidth Manager" service should be "DEACTIVATED"

Scenario: Activate "Cisco Directory Number Alias Sync" service
When we submit a request to activate "Cisco Directory Number Alias Sync" service
And the "Cisco Directory Number Alias Sync" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Directory Number Alias Sync" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Directory Number Alias Sync" service
When we submit a request to deactivate "Cisco Directory Number Alias Sync" service
And the "Cisco Directory Number Alias Sync" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Directory Number Alias Sync" service should be "DEACTIVATED"

Scenario: Activate "Cisco Directory Number Alias Lookup" service
When we submit a request to activate "Cisco Directory Number Alias Lookup" service
And the "Cisco Directory Number Alias Lookup" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Directory Number Alias Lookup" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Directory Number Alias Lookup" service
When we submit a request to deactivate "Cisco Directory Number Alias Lookup" service
And the "Cisco Directory Number Alias Lookup" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Directory Number Alias Lookup" service should be "DEACTIVATED"

Scenario: Activate "Self Provisioning IVR" service
When we submit a request to activate "Self Provisioning IVR" service
And the "Self Provisioning IVR" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Self Provisioning IVR" service should be "ACTIVATED"

Scenario: Deactivate "Self Provisioning IVR" service
When we submit a request to deactivate "Self Provisioning IVR" service
And the "Self Provisioning IVR" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Self Provisioning IVR" service should be "DEACTIVATED"

Scenario: Activate "Cisco AXL Web Service" service
When we submit a request to activate "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco AXL Web Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco AXL Web Service" service
When we submit a request to deactivate "Cisco AXL Web Service" service
And the "Cisco AXL Web Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco AXL Web Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco Bulk Provisioning Service" service
When we submit a request to activate "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Bulk Provisioning Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Bulk Provisioning Service" service
When we submit a request to deactivate "Cisco Bulk Provisioning Service" service
And the "Cisco Bulk Provisioning Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Bulk Provisioning Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco Serviceability Reporter" service
When we submit a request to activate "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Serviceability Reporter" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Serviceability Reporter" service
When we submit a request to deactivate "Cisco Serviceability Reporter" service
And the "Cisco Serviceability Reporter" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Serviceability Reporter" service should be "DEACTIVATED"

Scenario: Activate "Cisco SIP Proxy" service
When we submit a request to activate "Cisco SIP Proxy" service
And the "Cisco SIP Proxy" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco SIP Proxy" service should be "ACTIVATED"

Scenario: Deactivate "Cisco SIP Proxy" service
When we submit a request to deactivate "Cisco SIP Proxy" service
And the "Cisco SIP Proxy" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco SIP Proxy" service should be "DEACTIVATED"

Scenario: Activate "Cisco Presence Engine" service
When we submit a request to activate "Cisco Presence Engine" service
And the "Cisco Presence Engine" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco Presence Engine" service should be "ACTIVATED"

Scenario: Deactivate "Cisco Presence Engine" service
When we submit a request to deactivate "Cisco Presence Engine" service
And the "Cisco Presence Engine" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco Presence Engine" service should be "DEACTIVATED"

Scenario: Activate "Cisco XCP Text Conference Manager" service
When we submit a request to activate "Cisco XCP Text Conference Manager" service
And the "Cisco XCP Text Conference Manager" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco XCP Text Conference Manager" service should be "ACTIVATED"

Scenario: Deactivate "Cisco XCP Text Conference Manager" service
When we submit a request to deactivate "Cisco XCP Text Conference Manager" service
And the "Cisco XCP Text Conference Manager" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco XCP Text Conference Manager" service should be "DEACTIVATED"

Scenario: Activate "Cisco XCP Web Connection Manager" service
When we submit a request to activate "Cisco XCP Web Connection Manager" service
And the "Cisco XCP Web Connection Manager" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco XCP Web Connection Manager" service should be "ACTIVATED"

Scenario: Deactivate "Cisco XCP Web Connection Manager" service
When we submit a request to deactivate "Cisco XCP Web Connection Manager" service
And the "Cisco XCP Web Connection Manager" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco XCP Web Connection Manager" service should be "DEACTIVATED"

Scenario: Activate "Cisco XCP Connection Manager" service
When we submit a request to activate "Cisco XCP Connection Manager" service
And the "Cisco XCP Connection Manager" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco XCP Connection Manager" service should be "ACTIVATED"

Scenario: Deactivate "Cisco XCP Connection Manager" service
When we submit a request to deactivate "Cisco XCP Connection Manager" service
And the "Cisco XCP Connection Manager" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco XCP Connection Manager" service should be "DEACTIVATED"

Scenario: Activate "Cisco XCP SIP Federation Connection Manager" service
When we submit a request to activate "Cisco XCP SIP Federation Connection Manager" service
And the "Cisco XCP SIP Federation Connection Manager" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco XCP SIP Federation Connection Manager" service should be "ACTIVATED"

Scenario: Deactivate "Cisco XCP SIP Federation Connection Manager" service
When we submit a request to deactivate "Cisco XCP SIP Federation Connection Manager" service
And the "Cisco XCP SIP Federation Connection Manager" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco XCP SIP Federation Connection Manager" service should be "DEACTIVATED"

Scenario: Activate "Cisco XCP XMPP Federation Connection Manager" service
When we submit a request to activate "Cisco XCP XMPP Federation Connection Manager" service
And the "Cisco XCP XMPP Federation Connection Manager" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco XCP XMPP Federation Connection Manager" service should be "ACTIVATED"

Scenario: Deactivate "Cisco XCP XMPP Federation Connection Manager" service
When we submit a request to deactivate "Cisco XCP XMPP Federation Connection Manager" service
And the "Cisco XCP XMPP Federation Connection Manager" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco XCP XMPP Federation Connection Manager" service should be "DEACTIVATED"

Scenario: Activate "Cisco XCP Message Archiver" service
When we submit a request to activate "Cisco XCP Message Archiver" service
And the "Cisco XCP Message Archiver" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco XCP Message Archiver" service should be "ACTIVATED"

Scenario: Deactivate "Cisco XCP Message Archiver" service
When we submit a request to deactivate "Cisco XCP Message Archiver" service
And the "Cisco XCP Message Archiver" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco XCP Message Archiver" service should be "DEACTIVATED"

Scenario: Activate "Cisco XCP Directory Service" service
When we submit a request to activate "Cisco XCP Directory Service" service
And the "Cisco XCP Directory Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco XCP Directory Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco XCP Directory Service" service
When we submit a request to deactivate "Cisco XCP Directory Service" service
And the "Cisco XCP Directory Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco XCP Directory Service" service should be "DEACTIVATED"

Scenario: Activate "Cisco XCP Authentication Service" service
When we submit a request to activate "Cisco XCP Authentication Service" service
And the "Cisco XCP Authentication Service" service is "deactivated"
Then we should receive "ACTIVATED" message
And the status of "Cisco XCP Authentication Service" service should be "ACTIVATED"

Scenario: Deactivate "Cisco XCP Authentication Service" service
When we submit a request to deactivate "Cisco XCP Authentication Service" service
And the "Cisco XCP Authentication Service" service is "activated"
Then we should receive "DEACTIVATED" message
And the status of "Cisco XCP Authentication Service" service should be "DEACTIVATED"

############################ Error handling

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