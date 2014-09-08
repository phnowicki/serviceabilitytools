
package CiscoUC::CDR::9_1::Typemaps::CDRonDemandService;
use strict;
use warnings;

our $typemap_1 = {
               'get_file' => 'CiscoUC::CDR::9_1::Elements::get_file',
               'get_file/in2' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get_file_listResponse/get_file_listReturn' => 'CiscoUC::CDR::9_1::Types::ArrayOfFileName',
               'get_file_listResponse' => 'CiscoUC::CDR::9_1::Elements::get_file_listResponse',
               'get_file/in1' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/faultcode' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
               'get_file/in4' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get_fileResponse' => 'CiscoUC::CDR::9_1::Elements::get_fileResponse',
               'Fault/faultstring' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault' => 'SOAP::WSDL::SOAP::Typelib::Fault11',
               'get_file/in5' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'get_file_list' => 'CiscoUC::CDR::9_1::Elements::get_file_list',
               'get_file_list/in1' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/faultactor' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
               'get_file_list/in0' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get_file/in0' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get_file_list/in2' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/detail' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get_file/in3' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'get_file_listResponse/get_file_listReturn/FileName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string'
             };
;

sub get_class {
  my $name = join '/', @{ $_[1] };
  return $typemap_1->{ $name };
}

sub get_typemap {
    return $typemap_1;
}

1;

__END__

__END__

=pod

=head1 NAME

CiscoUC::CDR::9_1::Typemaps::CDRonDemandService - typemap for CDRonDemandService

=head1 DESCRIPTION

Typemap created by SOAP::WSDL for map-based SOAP message parsers.

=cut

