
package CiscoUC::Perfmon::9_1::Elements::perfmonCollectCounterDataResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('perfmonCollectCounterDataResponse');
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

my %perfmonCollectCounterDataReturn_of :ATTR(:get<perfmonCollectCounterDataReturn>);

__PACKAGE__->_factory(
    [ qw(        perfmonCollectCounterDataReturn

    ) ],
    {
        'perfmonCollectCounterDataReturn' => \%perfmonCollectCounterDataReturn_of,
    },
    {
        'perfmonCollectCounterDataReturn' => 'CiscoUC::Perfmon::9_1::Types::CounterInfoType',
    },
    {

        'perfmonCollectCounterDataReturn' => 'perfmonCollectCounterDataReturn',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::Perfmon::9_1::Elements::perfmonCollectCounterDataResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
perfmonCollectCounterDataResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * perfmonCollectCounterDataReturn

 $element->set_perfmonCollectCounterDataReturn($data);
 $element->get_perfmonCollectCounterDataReturn();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::Perfmon::9_1::Elements::perfmonCollectCounterDataResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   perfmonCollectCounterDataReturn =>  { # CiscoUC::Perfmon::9_1::Types::CounterInfoType
     Name =>  { value => $some_value },
     Value =>  $some_value, # long
     CStatus =>  $some_value, # unsignedInt
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

