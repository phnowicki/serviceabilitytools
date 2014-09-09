package CiscoUC::RIS::10_0::Types::ColumnValueType;
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

my %Name_of :ATTR(:get<Name>);
my %Value_of :ATTR(:get<Value>);

__PACKAGE__->_factory(
    [ qw(        Name
        Value

    ) ],
    {
        'Name' => \%Name_of,
        'Value' => \%Value_of,
    },
    {
        'Name' => 'CiscoUC::RIS::10_0::Types::ColumnNType',
        'Value' => 'CiscoUC::RIS::10_0::Types::ColumnVType',
    },
    {

        'Name' => 'Name',
        'Value' => 'Value',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::RIS::10_0::Types::ColumnValueType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ColumnValueType from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Name


=item * Value




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::RIS::10_0::Types::ColumnValueType
   Name =>  { value => $some_value },
   Value =>  { value => $some_value },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
