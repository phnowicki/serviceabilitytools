package CiscoUC::RIS::9_1::Types::CmDevice;
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

my %Name_of :ATTR(:get<Name>);
my %IpAddress_of :ATTR(:get<IpAddress>);
my %DirNumber_of :ATTR(:get<DirNumber>);
my %DeviceClass_of :ATTR(:get<DeviceClass>);
my %Model_of :ATTR(:get<Model>);
my %Product_of :ATTR(:get<Product>);
my %BoxProduct_of :ATTR(:get<BoxProduct>);
my %Httpd_of :ATTR(:get<Httpd>);
my %RegistrationAttempts_of :ATTR(:get<RegistrationAttempts>);
my %IsCtiControllable_of :ATTR(:get<IsCtiControllable>);
my %LoginUserId_of :ATTR(:get<LoginUserId>);
my %Status_of :ATTR(:get<Status>);
my %StatusReason_of :ATTR(:get<StatusReason>);
my %PerfMonObject_of :ATTR(:get<PerfMonObject>);
my %DChannel_of :ATTR(:get<DChannel>);
my %Description_of :ATTR(:get<Description>);
my %H323Trunk_of :ATTR(:get<H323Trunk>);
my %TimeStamp_of :ATTR(:get<TimeStamp>);

__PACKAGE__->_factory(
    [ qw(        Name
        IpAddress
        DirNumber
        DeviceClass
        Model
        Product
        BoxProduct
        Httpd
        RegistrationAttempts
        IsCtiControllable
        LoginUserId
        Status
        StatusReason
        PerfMonObject
        DChannel
        Description
        H323Trunk
        TimeStamp

    ) ],
    {
        'Name' => \%Name_of,
        'IpAddress' => \%IpAddress_of,
        'DirNumber' => \%DirNumber_of,
        'DeviceClass' => \%DeviceClass_of,
        'Model' => \%Model_of,
        'Product' => \%Product_of,
        'BoxProduct' => \%BoxProduct_of,
        'Httpd' => \%Httpd_of,
        'RegistrationAttempts' => \%RegistrationAttempts_of,
        'IsCtiControllable' => \%IsCtiControllable_of,
        'LoginUserId' => \%LoginUserId_of,
        'Status' => \%Status_of,
        'StatusReason' => \%StatusReason_of,
        'PerfMonObject' => \%PerfMonObject_of,
        'DChannel' => \%DChannel_of,
        'Description' => \%Description_of,
        'H323Trunk' => \%H323Trunk_of,
        'TimeStamp' => \%TimeStamp_of,
    },
    {
        'Name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'IpAddress' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DirNumber' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'DeviceClass' => 'CiscoUC::RIS::9_1::Types::DeviceClass',
        'Model' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
        'Product' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
        'BoxProduct' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
        'Httpd' => 'CiscoUC::RIS::9_1::Types::CmDevHttpd',
        'RegistrationAttempts' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
        'IsCtiControllable' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'LoginUserId' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Status' => 'CiscoUC::RIS::9_1::Types::CmDevRegStat',
        'StatusReason' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
        'PerfMonObject' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
        'DChannel' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
        'Description' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'H323Trunk' => 'CiscoUC::RIS::9_1::Types::H323Trunk',
        'TimeStamp' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
    },
    {

        'Name' => 'Name',
        'IpAddress' => 'IpAddress',
        'DirNumber' => 'DirNumber',
        'DeviceClass' => 'DeviceClass',
        'Model' => 'Model',
        'Product' => 'Product',
        'BoxProduct' => 'BoxProduct',
        'Httpd' => 'Httpd',
        'RegistrationAttempts' => 'RegistrationAttempts',
        'IsCtiControllable' => 'IsCtiControllable',
        'LoginUserId' => 'LoginUserId',
        'Status' => 'Status',
        'StatusReason' => 'StatusReason',
        'PerfMonObject' => 'PerfMonObject',
        'DChannel' => 'DChannel',
        'Description' => 'Description',
        'H323Trunk' => 'H323Trunk',
        'TimeStamp' => 'TimeStamp',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::RIS::9_1::Types::CmDevice

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
CmDevice from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Name


=item * IpAddress


=item * DirNumber


=item * DeviceClass


=item * Model


=item * Product


=item * BoxProduct


=item * Httpd


=item * RegistrationAttempts


=item * IsCtiControllable


=item * LoginUserId


=item * Status


=item * StatusReason


=item * PerfMonObject


=item * DChannel


=item * Description


=item * H323Trunk


=item * TimeStamp




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::RIS::9_1::Types::CmDevice
   Name =>  $some_value, # string
   IpAddress =>  $some_value, # string
   DirNumber =>  $some_value, # string
   DeviceClass => $some_value, # DeviceClass
   Model =>  $some_value, # unsignedInt
   Product =>  $some_value, # unsignedInt
   BoxProduct =>  $some_value, # unsignedInt
   Httpd => $some_value, # CmDevHttpd
   RegistrationAttempts =>  $some_value, # unsignedInt
   IsCtiControllable =>  $some_value, # boolean
   LoginUserId =>  $some_value, # string
   Status => $some_value, # CmDevRegStat
   StatusReason =>  $some_value, # unsignedInt
   PerfMonObject =>  $some_value, # unsignedInt
   DChannel =>  $some_value, # unsignedInt
   Description =>  $some_value, # string
   H323Trunk =>  { # CiscoUC::RIS::9_1::Types::H323Trunk
     ConfigName =>  $some_value, # string
     TechPrefix =>  $some_value, # string
     Zone =>  $some_value, # string
     RemoteCmServer1 =>  $some_value, # string
     RemoteCmServer2 =>  $some_value, # string
     RemoteCmServer3 =>  $some_value, # string
     AltGkList =>  $some_value, # string
     ActiveGk =>  $some_value, # string
     CallSignalAddr =>  $some_value, # string
     RasAddr =>  $some_value, # string
   },
   TimeStamp =>  $some_value, # unsignedInt
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

