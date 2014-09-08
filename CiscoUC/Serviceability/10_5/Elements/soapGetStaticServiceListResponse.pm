
package CiscoUC::Serviceability::10_5::Elements::soapGetStaticServiceListResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('soapGetStaticServiceListResponse');
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

my %soapGetStaticServiceListReturn_of :ATTR(:get<soapGetStaticServiceListReturn>);

__PACKAGE__->_factory(
    [ qw(        soapGetStaticServiceListReturn

    ) ],
    {
        'soapGetStaticServiceListReturn' => \%soapGetStaticServiceListReturn_of,
    },
    {
        'soapGetStaticServiceListReturn' => 'CiscoUC::Serviceability::10_5::Types::StaticServiceList',
    },
    {

        'soapGetStaticServiceListReturn' => 'soapGetStaticServiceListReturn',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::Serviceability::10_5::Elements::soapGetStaticServiceListResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
soapGetStaticServiceListResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * soapGetStaticServiceListReturn

 $element->set_soapGetStaticServiceListReturn($data);
 $element->get_soapGetStaticServiceListReturn();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::Serviceability::10_5::Elements::soapGetStaticServiceListResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   soapGetStaticServiceListReturn =>  { # CiscoUC::Serviceability::10_5::Types::StaticServiceList
     Services =>  { # CiscoUC::Serviceability::10_5::Types::ArrayOfServiceSpecification
       item =>  { # CiscoUC::Serviceability::10_5::Types::ServiceSpecification
         ServiceName =>  $some_value, # string
         ServiceType => $some_value, # ServiceTypes
         Deployable =>  $some_value, # boolean
         GroupName =>  $some_value, # string
         DependentServices =>  { # CiscoUC::Serviceability::10_5::Types::DependentServices
           Service =>  $some_value, # string
         },
       },
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

