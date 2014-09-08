package CiscoUC::Log::10_0::Types::SchemaFileSelectionCriteria;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %ServiceLogs_of :ATTR(:get<ServiceLogs>);
my %SystemLogs_of :ATTR(:get<SystemLogs>);
my %SearchStr_of :ATTR(:get<SearchStr>);
my %Frequency_of :ATTR(:get<Frequency>);
my %JobType_of :ATTR(:get<JobType>);
my %ToDate_of :ATTR(:get<ToDate>);
my %FromDate_of :ATTR(:get<FromDate>);
my %TimeZone_of :ATTR(:get<TimeZone>);
my %RelText_of :ATTR(:get<RelText>);
my %RelTime_of :ATTR(:get<RelTime>);
my %Port_of :ATTR(:get<Port>);
my %IPAddress_of :ATTR(:get<IPAddress>);
my %UserName_of :ATTR(:get<UserName>);
my %Password_of :ATTR(:get<Password>);
my %ZipInfo_of :ATTR(:get<ZipInfo>);
my %RemoteFolder_of :ATTR(:get<RemoteFolder>);

__PACKAGE__->_factory(
    [ qw(        ServiceLogs
        SystemLogs
        SearchStr
        Frequency
        JobType
        ToDate
        FromDate
        TimeZone
        RelText
        RelTime
        Port
        IPAddress
        UserName
        Password
        ZipInfo
        RemoteFolder

    ) ],
    {
        'ServiceLogs' => \%ServiceLogs_of,
        'SystemLogs' => \%SystemLogs_of,
        'SearchStr' => \%SearchStr_of,
        'Frequency' => \%Frequency_of,
        'JobType' => \%JobType_of,
        'ToDate' => \%ToDate_of,
        'FromDate' => \%FromDate_of,
        'TimeZone' => \%TimeZone_of,
        'RelText' => \%RelText_of,
        'RelTime' => \%RelTime_of,
        'Port' => \%Port_of,
        'IPAddress' => \%IPAddress_of,
        'UserName' => \%UserName_of,
        'Password' => \%Password_of,
        'ZipInfo' => \%ZipInfo_of,
        'RemoteFolder' => \%RemoteFolder_of,
    },
    {
        'ServiceLogs' => 'CiscoUC::Log::10_0::Types::ArrayOfServiceLog',
        'SystemLogs' => 'CiscoUC::Log::10_0::Types::ArrayOfSystemLog',
        'SearchStr' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Frequency' => 'CiscoUC::Log::10_0::Types::Frequency',
        'JobType' => 'CiscoUC::Log::10_0::Types::JobType',
        'ToDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'FromDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'TimeZone' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'RelText' => 'CiscoUC::Log::10_0::Types::RelText',
        'RelTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::byte',
        'Port' => 'SOAP::WSDL::XSD::Typelib::Builtin::byte',
        'IPAddress' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'UserName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Password' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ZipInfo' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'RemoteFolder' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'ServiceLogs' => 'ServiceLogs',
        'SystemLogs' => 'SystemLogs',
        'SearchStr' => 'SearchStr',
        'Frequency' => 'Frequency',
        'JobType' => 'JobType',
        'ToDate' => 'ToDate',
        'FromDate' => 'FromDate',
        'TimeZone' => 'TimeZone',
        'RelText' => 'RelText',
        'RelTime' => 'RelTime',
        'Port' => 'Port',
        'IPAddress' => 'IPAddress',
        'UserName' => 'UserName',
        'Password' => 'Password',
        'ZipInfo' => 'ZipInfo',
        'RemoteFolder' => 'RemoteFolder',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::Log::10_0::Types::SchemaFileSelectionCriteria

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
SchemaFileSelectionCriteria from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ServiceLogs


=item * SystemLogs


=item * SearchStr


=item * Frequency


=item * JobType


=item * ToDate


=item * FromDate


=item * TimeZone


=item * RelText


=item * RelTime


=item * Port


=item * IPAddress


=item * UserName


=item * Password


=item * ZipInfo


=item * RemoteFolder




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::Log::10_0::Types::SchemaFileSelectionCriteria
   ServiceLogs =>  { # CiscoUC::Log::10_0::Types::ArrayOfServiceLog
     item =>  $some_value, # string
   },
   SystemLogs =>  { # CiscoUC::Log::10_0::Types::ArrayOfSystemLog
     item =>  $some_value, # string
   },
   SearchStr =>  $some_value, # string
   Frequency => $some_value, # Frequency
   JobType => $some_value, # JobType
   ToDate =>  $some_value, # string
   FromDate =>  $some_value, # string
   TimeZone =>  $some_value, # string
   RelText => $some_value, # RelText
   RelTime =>  $some_value, # byte
   Port =>  $some_value, # byte
   IPAddress =>  $some_value, # string
   UserName =>  $some_value, # string
   Password =>  $some_value, # string
   ZipInfo =>  $some_value, # boolean
   RemoteFolder =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

