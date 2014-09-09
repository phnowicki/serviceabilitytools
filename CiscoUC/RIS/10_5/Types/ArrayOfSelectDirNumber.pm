package CiscoUC::RIS::10_5::Types::ArrayOfSelectDirNumber;
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
        'item' => 'CiscoUC::RIS::10_5::Types::SelectDirNumber',
    },
    {

        'item' => 'item',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::RIS::10_5::Types::ArrayOfSelectDirNumber

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ArrayOfSelectDirNumber from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * item




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::RIS::10_5::Types::ArrayOfSelectDirNumber
   item =>  { # CiscoUC::RIS::10_5::Types::SelectDirNumber
     DirNumber =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
