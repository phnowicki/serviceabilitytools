package CiscoUC::Log::10_0::Types::Schedule;
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

my %id_of :ATTR(:get<id>);
my %EndTime_of :ATTR(:get<EndTime>);
my %FrequencyType_of :ATTR(:get<FrequencyType>);
my %NodeName_of :ATTR(:get<NodeName>);
my %StartTime_of :ATTR(:get<StartTime>);
my %Status_of :ATTR(:get<Status>);

__PACKAGE__->_factory(
    [ qw(        id
        EndTime
        FrequencyType
        NodeName
        StartTime
        Status

    ) ],
    {
        'id' => \%id_of,
        'EndTime' => \%EndTime_of,
        'FrequencyType' => \%FrequencyType_of,
        'NodeName' => \%NodeName_of,
        'StartTime' => \%StartTime_of,
        'Status' => \%Status_of,
    },
    {
        'id' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'EndTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'FrequencyType' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'NodeName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'StartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Status' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'id' => 'id',
        'EndTime' => 'EndTime',
        'FrequencyType' => 'FrequencyType',
        'NodeName' => 'NodeName',
        'StartTime' => 'StartTime',
        'Status' => 'Status',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::Log::10_0::Types::Schedule

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Schedule from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * id


=item * EndTime


=item * FrequencyType


=item * NodeName


=item * StartTime


=item * Status




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::Log::10_0::Types::Schedule
   id =>  $some_value, # string
   EndTime =>  $some_value, # string
   FrequencyType =>  $some_value, # string
   NodeName =>  $some_value, # string
   StartTime =>  $some_value, # string
   Status =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

