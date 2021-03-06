
package CiscoUC::CDR::10_5::Elements::get_file_listResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('get_file_listResponse');
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

my %get_file_listReturn_of :ATTR(:get<get_file_listReturn>);

__PACKAGE__->_factory(
    [ qw(        get_file_listReturn

    ) ],
    {
        'get_file_listReturn' => \%get_file_listReturn_of,
    },
    {
        'get_file_listReturn' => 'CiscoUC::CDR::10_5::Types::ArrayOfFileName',
    },
    {

        'get_file_listReturn' => 'get_file_listReturn',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::CDR::10_5::Elements::get_file_listResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
get_file_listResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * get_file_listReturn

 $element->set_get_file_listReturn($data);
 $element->get_get_file_listReturn();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::CDR::10_5::Elements::get_file_listResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   get_file_listReturn =>  { # CiscoUC::CDR::10_5::Types::ArrayOfFileName
     FileName =>  $some_value, # string
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

