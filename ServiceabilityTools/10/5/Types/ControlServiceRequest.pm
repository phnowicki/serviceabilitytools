package ServiceabilityTools::10::5::Types::ControlServiceRequest;
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

my %NodeName_of :ATTR(:get<NodeName>);
my %ControlType_of :ATTR(:get<ControlType>);
my %ServiceList_of :ATTR(:get<ServiceList>);

__PACKAGE__->_factory(
    [ qw(        NodeName
        ControlType
        ServiceList

    ) ],
    {
        'NodeName' => \%NodeName_of,
        'ControlType' => \%ControlType_of,
        'ServiceList' => \%ServiceList_of,
    },
    {
        'NodeName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'ControlType' => 'ServiceabilityTools::10::5::Types::ControlType',
        'ServiceList' => 'ServiceabilityTools::10::5::Types::ArrayOfServices',
    },
    {

        'NodeName' => 'NodeName',
        'ControlType' => 'ControlType',
        'ServiceList' => 'ServiceList',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

ServiceabilityTools::10::5::Types::ControlServiceRequest

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ControlServiceRequest from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * NodeName (min/maxOccurs: 1/1)


=item * ControlType (min/maxOccurs: 1/1)


=item * ServiceList (min/maxOccurs: 1/1)




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ServiceabilityTools::10::5::Types::ControlServiceRequest
   NodeName =>  $some_value, # string
   ControlType => $some_value, # ControlType
   ServiceList =>  { # ServiceabilityTools::10::5::Types::ArrayOfServices
     item =>  $some_value, # string
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
