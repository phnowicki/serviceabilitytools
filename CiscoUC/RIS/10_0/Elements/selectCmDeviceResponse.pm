
package CiscoUC::RIS::10_0::Elements::selectCmDeviceResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('selectCmDeviceResponse');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %selectCmDeviceResponse_of :ATTR(:get<selectCmDeviceResponse>);

__PACKAGE__->_factory(
    [ qw(        selectCmDeviceResponse

    ) ],
    {
        'selectCmDeviceResponse' => \%selectCmDeviceResponse_of,
    },
    {
        'selectCmDeviceResponse' => 'CiscoUC::RIS::10_0::Types::selectCmDeviceReturn',
    },
    {

        'selectCmDeviceResponse' => 'selectCmDeviceResponse',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::RIS::10_0::Elements::selectCmDeviceResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
selectCmDeviceResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * selectCmDeviceResponse

 $element->set_selectCmDeviceResponse($data);
 $element->get_selectCmDeviceResponse();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::RIS::10_0::Elements::selectCmDeviceResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   selectCmDeviceResponse =>  { # CiscoUC::RIS::10_0::Types::selectCmDeviceReturn
     SelectCmDeviceResult =>  { # CiscoUC::RIS::10_0::Types::SelectCmDeviceResult
       TotalDevicesFound =>  $some_value, # unsignedInt
       CmNodes =>  { # CiscoUC::RIS::10_0::Types::ArrayOfCmNode
         CmNode =>  { # CiscoUC::RIS::10_0::Types::CmNode
           ReturnCode => $some_value, # RisReturnCode
           Name =>  $some_value, # string
           NoChange =>  $some_value, # boolean
           CmDevices =>  { # CiscoUC::RIS::10_0::Types::ArrayOfCmDevice
             CmDevice =>  { # CiscoUC::RIS::10_0::Types::CmDevice
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
               H323Trunk =>  { # CiscoUC::RIS::10_0::Types::H323Trunk
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
           },
         },
       },
     },
     StateInfo =>  $some_value, # string
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut
