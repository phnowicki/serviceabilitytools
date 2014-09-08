package CiscoUC::RIS::10_0::Types::CtiItem;
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

my %AppId_of :ATTR(:get<AppId>);
my %UserId_of :ATTR(:get<UserId>);
my %AppIpAddr_of :ATTR(:get<AppIpAddr>);
my %AppStatus_of :ATTR(:get<AppStatus>);
my %AppStatusReason_of :ATTR(:get<AppStatusReason>);
my %AppTimeStamp_of :ATTR(:get<AppTimeStamp>);
my %CtiDevice_of :ATTR(:get<CtiDevice>);
my %CtiLine_of :ATTR(:get<CtiLine>);

__PACKAGE__->_factory(
    [ qw(        AppId
        UserId
        AppIpAddr
        AppStatus
        AppStatusReason
        AppTimeStamp
        CtiDevice
        CtiLine

    ) ],
    {
        'AppId' => \%AppId_of,
        'UserId' => \%UserId_of,
        'AppIpAddr' => \%AppIpAddr_of,
        'AppStatus' => \%AppStatus_of,
        'AppStatusReason' => \%AppStatusReason_of,
        'AppTimeStamp' => \%AppTimeStamp_of,
        'CtiDevice' => \%CtiDevice_of,
        'CtiLine' => \%CtiLine_of,
    },
    {
        'AppId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'UserId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'AppIpAddr' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'AppStatus' => 'CiscoUC::RIS::10_0::Types::CtiStatus',
        'AppStatusReason' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
        'AppTimeStamp' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
        'CtiDevice' => 'CiscoUC::RIS::10_0::Types::CtiDevice',
        'CtiLine' => 'CiscoUC::RIS::10_0::Types::CtiLine',
    },
    {

        'AppId' => 'AppId',
        'UserId' => 'UserId',
        'AppIpAddr' => 'AppIpAddr',
        'AppStatus' => 'AppStatus',
        'AppStatusReason' => 'AppStatusReason',
        'AppTimeStamp' => 'AppTimeStamp',
        'CtiDevice' => 'CtiDevice',
        'CtiLine' => 'CtiLine',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::RIS::10_0::Types::CtiItem

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CtiItem from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AppId


=item * UserId


=item * AppIpAddr


=item * AppStatus


=item * AppStatusReason


=item * AppTimeStamp


=item * CtiDevice


=item * CtiLine




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::RIS::10_0::Types::CtiItem
   AppId =>  $some_value, # string
   UserId =>  $some_value, # string
   AppIpAddr =>  $some_value, # string
   AppStatus => $some_value, # CtiStatus
   AppStatusReason =>  $some_value, # unsignedInt
   AppTimeStamp =>  $some_value, # unsignedInt
   CtiDevice =>  { # CiscoUC::RIS::10_0::Types::CtiDevice
     AppControlsMedia =>  $some_value, # boolean
     DeviceName =>  $some_value, # string
     DeviceStatus => $some_value, # CtiStatus
     DeviceStatusReason =>  $some_value, # unsignedInt
     DeviceTimeStamp =>  $some_value, # unsignedInt
   },
   CtiLine =>  { # CiscoUC::RIS::10_0::Types::CtiLine
     DirNumber =>  $some_value, # string
     LineStatus => $some_value, # CtiStatus
     LineStatusReason =>  $some_value, # unsignedInt
     LineTimeStamp =>  $some_value, # unsignedInt
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

