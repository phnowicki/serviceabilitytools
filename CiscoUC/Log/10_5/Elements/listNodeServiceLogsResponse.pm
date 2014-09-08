
package CiscoUC::Log::10_5::Elements::listNodeServiceLogsResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('listNodeServiceLogsResponse');
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

my %listNodeServiceLogsReturn_of :ATTR(:get<listNodeServiceLogsReturn>);

__PACKAGE__->_factory(
    [ qw(        listNodeServiceLogsReturn

    ) ],
    {
        'listNodeServiceLogsReturn' => \%listNodeServiceLogsReturn_of,
    },
    {
        'listNodeServiceLogsReturn' => 'CiscoUC::Log::10_5::Types::NodeServiceLogList',
    },
    {

        'listNodeServiceLogsReturn' => 'listNodeServiceLogsReturn',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::Log::10_5::Elements::listNodeServiceLogsResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
listNodeServiceLogsResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * listNodeServiceLogsReturn

 $element->set_listNodeServiceLogsReturn($data);
 $element->get_listNodeServiceLogsReturn();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::Log::10_5::Elements::listNodeServiceLogsResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   listNodeServiceLogsReturn =>  { # CiscoUC::Log::10_5::Types::NodeServiceLogList
     name =>  $some_value, # string
     ServiceLog =>  { # CiscoUC::Log::10_5::Types::ArrayOfServiceLog
       item =>  $some_value, # string
     },
     SystemLog =>  { # CiscoUC::Log::10_5::Types::ArrayOfSystemLog
       item =>  $some_value, # string
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

