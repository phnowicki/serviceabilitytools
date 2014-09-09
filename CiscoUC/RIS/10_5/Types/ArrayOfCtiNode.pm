package CiscoUC::RIS::10_5::Types::ArrayOfCtiNode;
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

my %CtiNodes_of :ATTR(:get<CtiNodes>);

__PACKAGE__->_factory(
    [ qw(        CtiNodes

    ) ],
    {
        'CtiNodes' => \%CtiNodes_of,
    },
    {
        'CtiNodes' => 'CiscoUC::RIS::10_5::Types::CtiNode',
    },
    {

        'CtiNodes' => 'CtiNodes',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::RIS::10_5::Types::ArrayOfCtiNode

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ArrayOfCtiNode from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * CtiNodes




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::RIS::10_5::Types::ArrayOfCtiNode
   CtiNodes =>  { # CiscoUC::RIS::10_5::Types::CtiNode
     ReturnCode => $some_value, # RisReturnCode
     Name =>  $some_value, # string
     NoChange =>  $some_value, # boolean
     CtiItems =>  { # CiscoUC::RIS::10_5::Types::ArrayOfCtiItem
       CtiItems =>  { # CiscoUC::RIS::10_5::Types::CtiItem
         AppId =>  $some_value, # string
         UserId =>  $some_value, # string
         AppIpAddr =>  $some_value, # string
         AppStatus => $some_value, # CtiStatus
         AppStatusReason =>  $some_value, # unsignedInt
         AppTimeStamp =>  $some_value, # unsignedInt
         CtiDevice =>  { # CiscoUC::RIS::10_5::Types::CtiDevice
           AppControlsMedia =>  $some_value, # boolean
           DeviceName =>  $some_value, # string
           DeviceStatus => $some_value, # CtiStatus
           DeviceStatusReason =>  $some_value, # unsignedInt
           DeviceTimeStamp =>  $some_value, # unsignedInt
         },
         CtiLine =>  { # CiscoUC::RIS::10_5::Types::CtiLine
           DirNumber =>  $some_value, # string
           LineStatus => $some_value, # CtiStatus
           LineStatusReason =>  $some_value, # unsignedInt
           LineTimeStamp =>  $some_value, # unsignedInt
         },
       },
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
