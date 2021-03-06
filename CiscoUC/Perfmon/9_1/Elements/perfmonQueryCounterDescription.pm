
package CiscoUC::Perfmon::9_1::Elements::perfmonQueryCounterDescription;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('perfmonQueryCounterDescription');
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

my %Counter_of :ATTR(:get<Counter>);

__PACKAGE__->_factory(
    [ qw(        Counter

    ) ],
    {
        'Counter' => \%Counter_of,
    },
    {
        'Counter' => 'CiscoUC::Perfmon::9_1::Types::CounterNameType',
    },
    {

        'Counter' => 'Counter',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::Perfmon::9_1::Elements::perfmonQueryCounterDescription

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
perfmonQueryCounterDescription from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Counter

 $element->set_Counter($data);
 $element->get_Counter();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::Perfmon::9_1::Elements::perfmonQueryCounterDescription->new($data);

Constructor. The following data structure may be passed to new():

 {
   Counter =>  { value => $some_value },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

