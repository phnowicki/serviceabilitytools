
package CiscoUC::Perfmon::10_0::Elements::perfmonCollectSessionDataResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('perfmonCollectSessionDataResponse');
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

my %perfmonCollectSessionDataReturn_of :ATTR(:get<perfmonCollectSessionDataReturn>);

__PACKAGE__->_factory(
    [ qw(        perfmonCollectSessionDataReturn

    ) ],
    {
        'perfmonCollectSessionDataReturn' => \%perfmonCollectSessionDataReturn_of,
    },
    {
        'perfmonCollectSessionDataReturn' => 'CiscoUC::Perfmon::10_0::Types::CounterInfoType',
    },
    {

        'perfmonCollectSessionDataReturn' => 'perfmonCollectSessionDataReturn',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::Perfmon::10_0::Elements::perfmonCollectSessionDataResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
perfmonCollectSessionDataResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * perfmonCollectSessionDataReturn

 $element->set_perfmonCollectSessionDataReturn($data);
 $element->get_perfmonCollectSessionDataReturn();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::Perfmon::10_0::Elements::perfmonCollectSessionDataResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   perfmonCollectSessionDataReturn =>  { # CiscoUC::Perfmon::10_0::Types::CounterInfoType
     Name =>  { value => $some_value },
     Value =>  $some_value, # long
     CStatus =>  $some_value, # unsignedInt
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

