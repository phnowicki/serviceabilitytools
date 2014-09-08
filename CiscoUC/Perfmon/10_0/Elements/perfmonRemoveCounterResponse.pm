
package CiscoUC::Perfmon::10_0::Elements::perfmonRemoveCounterResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('perfmonRemoveCounterResponse');
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



# There's no variety - empty complexType
use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

__PACKAGE__->_factory();




} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::Perfmon::10_0::Elements::perfmonRemoveCounterResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
perfmonRemoveCounterResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over


=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::Perfmon::10_0::Elements::perfmonRemoveCounterResponse->new($data);

Constructor. The following data structure may be passed to new():

,

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

