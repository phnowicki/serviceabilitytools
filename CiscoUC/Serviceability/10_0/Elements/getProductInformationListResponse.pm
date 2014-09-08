
package CiscoUC::Serviceability::10_0::Elements::getProductInformationListResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('getProductInformationListResponse');
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

my %getProductInformationListReturn_of :ATTR(:get<getProductInformationListReturn>);

__PACKAGE__->_factory(
    [ qw(        getProductInformationListReturn

    ) ],
    {
        'getProductInformationListReturn' => \%getProductInformationListReturn_of,
    },
    {
        'getProductInformationListReturn' => 'CiscoUC::Serviceability::10_0::Types::GetProductInformationListResponse',
    },
    {

        'getProductInformationListReturn' => 'getProductInformationListReturn',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::Serviceability::10_0::Elements::getProductInformationListResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
getProductInformationListResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * getProductInformationListReturn

 $element->set_getProductInformationListReturn($data);
 $element->get_getProductInformationListReturn();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::Serviceability::10_0::Elements::getProductInformationListResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   getProductInformationListReturn =>  { # CiscoUC::Serviceability::10_0::Types::GetProductInformationListResponse
     ActiveServerVersion =>  $some_value, # string
     PrimaryNode =>  $some_value, # string
     SecondaryNode =>  $some_value, # string
     Products =>  { # CiscoUC::Serviceability::10_0::Types::ArrayOfInstalledProduct
       item =>  { # CiscoUC::Serviceability::10_0::Types::InstalledProduct
         ProductName =>  $some_value, # string
         ProductVersion =>  $some_value, # string
         ProductDescription =>  $some_value, # string
         ProductID =>  $some_value, # string
         ShortName =>  $some_value, # string
       },
     },
     Services =>  { # CiscoUC::Serviceability::10_0::Types::ArrayOfProductServiceSpecification
       item =>  { # CiscoUC::Serviceability::10_0::Types::ProductServiceSpecification
         ServiceName =>  $some_value, # string
         ServiceType => $some_value, # ServiceTypes
         Deployable =>  $some_value, # boolean
         GroupName =>  $some_value, # string
         ProductID =>  $some_value, # string
         DependentServices =>  { # CiscoUC::Serviceability::10_0::Types::DependentServices
           Service =>  $some_value, # string
         },
       },
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

