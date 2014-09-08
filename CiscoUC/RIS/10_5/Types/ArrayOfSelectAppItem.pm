package CiscoUC::RIS::10_5::Types::ArrayOfSelectAppItem;
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

my %SelectAppItem_of :ATTR(:get<SelectAppItem>);

__PACKAGE__->_factory(
    [ qw(        SelectAppItem

    ) ],
    {
        'SelectAppItem' => \%SelectAppItem_of,
    },
    {
        'SelectAppItem' => 'CiscoUC::RIS::10_5::Types::SelectAppItem',
    },
    {

        'SelectAppItem' => 'SelectAppItem',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::RIS::10_5::Types::ArrayOfSelectAppItem

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ArrayOfSelectAppItem from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * SelectAppItem




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::RIS::10_5::Types::ArrayOfSelectAppItem
   SelectAppItem =>  { # CiscoUC::RIS::10_5::Types::SelectAppItem
     AppItem =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

