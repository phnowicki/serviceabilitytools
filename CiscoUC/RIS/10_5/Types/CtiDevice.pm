package CiscoUC::RIS::10_5::Types::CtiDevice;
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

my %AppControlsMedia_of :ATTR(:get<AppControlsMedia>);
my %DeviceName_of :ATTR(:get<DeviceName>);
my %DeviceStatus_of :ATTR(:get<DeviceStatus>);
my %DeviceStatusReason_of :ATTR(:get<DeviceStatusReason>);
my %DeviceTimeStamp_of :ATTR(:get<DeviceTimeStamp>);

__PACKAGE__->_factory(
    [ qw(        AppControlsMedia
        DeviceName
        DeviceStatus
        DeviceStatusReason
        DeviceTimeStamp

    ) ],
    {
        'AppControlsMedia' => \%AppControlsMedia_of,
        'DeviceName' => \%DeviceName_of,
        'DeviceStatus' => \%DeviceStatus_of,
        'DeviceStatusReason' => \%DeviceStatusReason_of,
        'DeviceTimeStamp' => \%DeviceTimeStamp_of,
    },
    {
        'AppControlsMedia' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'DeviceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DeviceStatus' => 'CiscoUC::RIS::10_5::Types::CtiStatus',
        'DeviceStatusReason' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
        'DeviceTimeStamp' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
    },
    {

        'AppControlsMedia' => 'AppControlsMedia',
        'DeviceName' => 'DeviceName',
        'DeviceStatus' => 'DeviceStatus',
        'DeviceStatusReason' => 'DeviceStatusReason',
        'DeviceTimeStamp' => 'DeviceTimeStamp',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::RIS::10_5::Types::CtiDevice

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CtiDevice from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * AppControlsMedia


=item * DeviceName


=item * DeviceStatus


=item * DeviceStatusReason


=item * DeviceTimeStamp




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::RIS::10_5::Types::CtiDevice
   AppControlsMedia =>  $some_value, # boolean
   DeviceName =>  $some_value, # string
   DeviceStatus => $some_value, # CtiStatus
   DeviceStatusReason =>  $some_value, # unsignedInt
   DeviceTimeStamp =>  $some_value, # unsignedInt
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

