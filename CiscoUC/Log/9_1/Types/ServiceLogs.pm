package CiscoUC::Log::9_1::Types::ServiceLogs;
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

my %name_of :ATTR(:get<name>);
my %SetOfFiles_of :ATTR(:get<SetOfFiles>);

__PACKAGE__->_factory(
    [ qw(        name
        SetOfFiles

    ) ],
    {
        'name' => \%name_of,
        'SetOfFiles' => \%SetOfFiles_of,
    },
    {
        'name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'SetOfFiles' => 'CiscoUC::Log::9_1::Types::ArrayOfFile',
    },
    {

        'name' => 'name',
        'SetOfFiles' => 'SetOfFiles',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::Log::9_1::Types::ServiceLogs

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ServiceLogs from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * name


=item * SetOfFiles




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::Log::9_1::Types::ServiceLogs
   name =>  $some_value, # string
   SetOfFiles =>  { # CiscoUC::Log::9_1::Types::ArrayOfFile
     File =>  { # CiscoUC::Log::9_1::Types::File
       name =>  $some_value, # string
       absolutepath =>  $some_value, # string
       filesize =>  $some_value, # string
       modifiedDate =>  $some_value, # string
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

