
package CiscoUC::Log::9_1::Elements::listNodeServiceLogs;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('listNodeServiceLogs');
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

my %ListRequest_of :ATTR(:get<ListRequest>);

__PACKAGE__->_factory(
    [ qw(        ListRequest

    ) ],
    {
        'ListRequest' => \%ListRequest_of,
    },
    {
        'ListRequest' => 'CiscoUC::Log::9_1::Types::ListRequest',
    },
    {

        'ListRequest' => 'ListRequest',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::Log::9_1::Elements::listNodeServiceLogs

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
listNodeServiceLogs from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * ListRequest

 $element->set_ListRequest($data);
 $element->get_ListRequest();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::Log::9_1::Elements::listNodeServiceLogs->new($data);

Constructor. The following data structure may be passed to new():

 {
   ListRequest =>  { value => $some_value },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

