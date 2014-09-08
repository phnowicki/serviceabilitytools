package CiscoUC::Perfmon::10_0::Types::ArrayOfCounterType;
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

my %item_of :ATTR(:get<item>);

__PACKAGE__->_factory(
    [ qw(        item

    ) ],
    {
        'item' => \%item_of,
    },
    {
        'item' => 'CiscoUC::Perfmon::10_0::Types::CounterType',
    },
    {

        'item' => 'item',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::Perfmon::10_0::Types::ArrayOfCounterType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ArrayOfCounterType from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * item




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::Perfmon::10_0::Types::ArrayOfCounterType
   item =>  { # CiscoUC::Perfmon::10_0::Types::CounterType
     Name =>  { value => $some_value },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

