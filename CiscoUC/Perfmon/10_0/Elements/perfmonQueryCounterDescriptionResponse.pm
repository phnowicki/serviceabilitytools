
package CiscoUC::Perfmon::10_0::Elements::perfmonQueryCounterDescriptionResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('perfmonQueryCounterDescriptionResponse');
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

my %perfmonQueryCounterDescriptionReturn_of :ATTR(:get<perfmonQueryCounterDescriptionReturn>);

__PACKAGE__->_factory(
    [ qw(        perfmonQueryCounterDescriptionReturn

    ) ],
    {
        'perfmonQueryCounterDescriptionReturn' => \%perfmonQueryCounterDescriptionReturn_of,
    },
    {
        'perfmonQueryCounterDescriptionReturn' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'perfmonQueryCounterDescriptionReturn' => 'perfmonQueryCounterDescriptionReturn',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::Perfmon::10_0::Elements::perfmonQueryCounterDescriptionResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
perfmonQueryCounterDescriptionResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * perfmonQueryCounterDescriptionReturn

 $element->set_perfmonQueryCounterDescriptionReturn($data);
 $element->get_perfmonQueryCounterDescriptionReturn();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::Perfmon::10_0::Elements::perfmonQueryCounterDescriptionResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   perfmonQueryCounterDescriptionReturn =>  $some_value, # string
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut
