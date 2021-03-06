
package CiscoUC::Perfmon::10_5::Elements::perfmonCloseSession;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('perfmonCloseSession');
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

my %SessionHandle_of :ATTR(:get<SessionHandle>);

__PACKAGE__->_factory(
    [ qw(        SessionHandle

    ) ],
    {
        'SessionHandle' => \%SessionHandle_of,
    },
    {
        'SessionHandle' => 'CiscoUC::Perfmon::10_5::Types::SessionHandleType',
    },
    {

        'SessionHandle' => 'SessionHandle',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::Perfmon::10_5::Elements::perfmonCloseSession

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
perfmonCloseSession from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * SessionHandle

 $element->set_SessionHandle($data);
 $element->get_SessionHandle();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::Perfmon::10_5::Elements::perfmonCloseSession->new($data);

Constructor. The following data structure may be passed to new():

 {
   SessionHandle =>  { value => $some_value },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

