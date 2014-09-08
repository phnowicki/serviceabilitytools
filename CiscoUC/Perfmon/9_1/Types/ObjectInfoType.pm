package CiscoUC::Perfmon::9_1::Types::ObjectInfoType;
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
my %MultiInstance_of :ATTR(:get<MultiInstance>);
my %ArrayOfCounter_of :ATTR(:get<ArrayOfCounter>);

__PACKAGE__->_factory(
    [ qw(        Name
        MultiInstance
        ArrayOfCounter

    ) ],
    {
        'Name' => \%Name_of,
        'MultiInstance' => \%MultiInstance_of,
        'ArrayOfCounter' => \%ArrayOfCounter_of,
    },
    {
        'Name' => 'CiscoUC::Perfmon::9_1::Types::ObjectNameType',
        'MultiInstance' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
        'ArrayOfCounter' => 'CiscoUC::Perfmon::9_1::Types::ArrayOfCounterType',
    },
    {

        'Name' => 'Name',
        'MultiInstance' => 'MultiInstance',
        'ArrayOfCounter' => 'ArrayOfCounter',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::Perfmon::9_1::Types::ObjectInfoType

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ObjectInfoType from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Name


=item * MultiInstance


=item * ArrayOfCounter




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::Perfmon::9_1::Types::ObjectInfoType
   Name =>  { value => $some_value },
   MultiInstance =>  $some_value, # boolean
   ArrayOfCounter =>  { # CiscoUC::Perfmon::9_1::Types::ArrayOfCounterType
     item =>  { # CiscoUC::Perfmon::9_1::Types::CounterType
       Name =>  { value => $some_value },
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

