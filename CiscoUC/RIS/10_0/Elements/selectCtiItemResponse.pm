
package CiscoUC::RIS::10_0::Elements::selectCtiItemResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('selectCtiItemResponse');
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

my %selectCtiItemReturn_of :ATTR(:get<selectCtiItemReturn>);

__PACKAGE__->_factory(
    [ qw(        selectCtiItemReturn

    ) ],
    {
        'selectCtiItemReturn' => \%selectCtiItemReturn_of,
    },
    {
        'selectCtiItemReturn' => 'CiscoUC::RIS::10_0::Types::selectCtiItemReturn',
    },
    {

        'selectCtiItemReturn' => 'selectCtiItemReturn',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::RIS::10_0::Elements::selectCtiItemResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
selectCtiItemResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * selectCtiItemReturn

 $element->set_selectCtiItemReturn($data);
 $element->get_selectCtiItemReturn();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::RIS::10_0::Elements::selectCtiItemResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   selectCtiItemReturn =>  { # CiscoUC::RIS::10_0::Types::selectCtiItemReturn
     SelectCtiItemResult =>  { # CiscoUC::RIS::10_0::Types::SelectCtiItemResult
       TotalItemsFound =>  $some_value, # unsignedInt
       CtiNodes =>  { # CiscoUC::RIS::10_0::Types::ArrayOfCtiNode
         CtiNodes =>  { # CiscoUC::RIS::10_0::Types::CtiNode
           ReturnCode => $some_value, # RisReturnCode
           Name =>  $some_value, # string
           NoChange =>  $some_value, # boolean
           CtiItems =>  { # CiscoUC::RIS::10_0::Types::ArrayOfCtiItem
             CtiItems =>  { # CiscoUC::RIS::10_0::Types::CtiItem
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

