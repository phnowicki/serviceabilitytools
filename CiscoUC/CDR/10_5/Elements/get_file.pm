
package CiscoUC::CDR::10_5::Elements::get_file;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('get_file');
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

my %in0_of :ATTR(:get<in0>);
my %in1_of :ATTR(:get<in1>);
my %in2_of :ATTR(:get<in2>);
my %in3_of :ATTR(:get<in3>);
my %in4_of :ATTR(:get<in4>);
my %in5_of :ATTR(:get<in5>);

__PACKAGE__->_factory(
    [ qw(        in0
        in1
        in2
        in3
        in4
        in5

    ) ],
    {
        'in0' => \%in0_of,
        'in1' => \%in1_of,
        'in2' => \%in2_of,
        'in3' => \%in3_of,
        'in4' => \%in4_of,
        'in5' => \%in5_of,
    },
    {
        'in0' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'in1' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'in2' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'in3' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'in4' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'in5' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
    },
    {

        'in0' => 'in0',
        'in1' => 'in1',
        'in2' => 'in2',
        'in3' => 'in3',
        'in4' => 'in4',
        'in5' => 'in5',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::CDR::10_5::Elements::get_file

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
get_file from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * in0

 $element->set_in0($data);
 $element->get_in0();




=item * in1

 $element->set_in1($data);
 $element->get_in1();




=item * in2

 $element->set_in2($data);
 $element->get_in2();




=item * in3

 $element->set_in3($data);
 $element->get_in3();




=item * in4

 $element->set_in4($data);
 $element->get_in4();




=item * in5

 $element->set_in5($data);
 $element->get_in5();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::CDR::10_5::Elements::get_file->new($data);

Constructor. The following data structure may be passed to new():

 {
   in0 =>  $some_value, # string
   in1 =>  $some_value, # string
   in2 =>  $some_value, # string
   in3 =>  $some_value, # string
   in4 =>  $some_value, # string
   in5 =>  $some_value, # boolean
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

