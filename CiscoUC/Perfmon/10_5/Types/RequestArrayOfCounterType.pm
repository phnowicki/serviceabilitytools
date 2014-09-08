package CiscoUC::Perfmon::10_5::Types::RequestArrayOfCounterType;
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

my %Counter_of :ATTR(:get<Counter>);

__PACKAGE__->_factory(
    [ qw(        Counter

    ) ],
    {
        'Counter' => \%Counter_of,
    },
    {
        'Counter' => 'CiscoUC::Perfmon::10_5::Types::CounterType',
    },
    {

        'Counter' => 'Counter',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::Perfmon::10_5::Types::RequestArrayOfCounterType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
RequestArrayOfCounterType from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Counter




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::Perfmon::10_5::Types::RequestArrayOfCounterType
   Counter =>  { # CiscoUC::Perfmon::10_5::Types::CounterType
     Name =>  { value => $some_value },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

