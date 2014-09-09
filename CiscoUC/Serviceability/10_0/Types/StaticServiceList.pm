package CiscoUC::Serviceability::10_0::Types::StaticServiceList;
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

my %Services_of :ATTR(:get<Services>);

__PACKAGE__->_factory(
    [ qw(        Services

    ) ],
    {
        'Services' => \%Services_of,
    },
    {
        'Services' => 'CiscoUC::Serviceability::10_0::Types::ArrayOfServiceSpecification',
    },
    {

        'Services' => 'Services',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::Serviceability::10_0::Types::StaticServiceList

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
StaticServiceList from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Services




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::Serviceability::10_0::Types::StaticServiceList
   Services =>  { # CiscoUC::Serviceability::10_0::Types::ArrayOfServiceSpecification
     item =>  { # CiscoUC::Serviceability::10_0::Types::ServiceSpecification
       ServiceName =>  $some_value, # string
       ServiceType => $some_value, # ServiceTypes
       Deployable =>  $some_value, # boolean
       GroupName =>  $some_value, # string
       DependentServices =>  { # CiscoUC::Serviceability::10_0::Types::DependentServices
         Service =>  $some_value, # string
       },
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
