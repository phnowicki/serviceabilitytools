
package CiscoUC::Log::9_1::Typemaps::LogCollectionPortTypeService;
use strict;
use warnings;

our $typemap_1 = {
               'selectLogFiles/FileSelectionCriteria/FromDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'listNodeServiceLogsResponse/listNodeServiceLogsReturn/SystemLog' => 'CiscoUC::Log::9_1::Types::ArrayOfSystemLog',
               'selectLogFiles' => 'CiscoUC::Log::9_1::Elements::selectLogFiles',
               'selectLogFiles/FileSelectionCriteria/UserName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'listNodeServiceLogsResponse/listNodeServiceLogsReturn' => 'CiscoUC::Log::9_1::Types::NodeServiceLogList',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node' => 'CiscoUC::Log::9_1::Types::Node',
               'Fault/faultcode' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node/ServiceList' => 'CiscoUC::Log::9_1::Types::ArrayOfServiceLogs',
               'selectLogFiles/FileSelectionCriteria/ToDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult' => 'CiscoUC::Log::9_1::Types::SchemaFileSelectionResult',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node/ServiceList/ServiceLogs/SetOfFiles/File/modifiedDate' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFiles/FileSelectionCriteria/RelText' => 'CiscoUC::Log::9_1::Types::RelText',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node/ServiceList/ServiceLogs/SetOfFiles/File/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'listNodeServiceLogs' => 'CiscoUC::Log::9_1::Elements::listNodeServiceLogs',
               'selectLogFiles/FileSelectionCriteria/IPAddress' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'listNodeServiceLogsResponse/listNodeServiceLogsReturn/ServiceLog/item' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFilesResponse/ResultSet' => 'CiscoUC::Log::9_1::Types::ResultSet',
               'selectLogFiles/FileSelectionCriteria/SystemLogs' => 'CiscoUC::Log::9_1::Types::ArrayOfSystemLog',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node/ServiceList/ServiceLogs/SetOfFiles/File/filesize' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node/ServiceList/ServiceLogs/SetOfFiles' => 'CiscoUC::Log::9_1::Types::ArrayOfFile',
               'listNodeServiceLogsResponse/listNodeServiceLogsReturn/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFiles/FileSelectionCriteria/Frequency' => 'CiscoUC::Log::9_1::Types::Frequency',
               'selectLogFiles/FileSelectionCriteria/JobType' => 'CiscoUC::Log::9_1::Types::JobType',
               'selectLogFiles/FileSelectionCriteria/RemoteFolder' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'listNodeServiceLogsResponse/listNodeServiceLogsReturn/SystemLog/item' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node/ServiceList/ServiceLogs/SetOfFiles/File' => 'CiscoUC::Log::9_1::Types::File',
               'selectLogFiles/FileSelectionCriteria/Port' => 'SOAP::WSDL::XSD::Typelib::Builtin::byte',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFiles/FileSelectionCriteria/ServiceLogs' => 'CiscoUC::Log::9_1::Types::ArrayOfServiceLog',
               'Fault/faultstring' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFiles/FileSelectionCriteria/RelTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::byte',
               'selectLogFilesResponse' => 'CiscoUC::Log::9_1::Elements::selectLogFilesResponse',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node/ServiceList/ServiceLogs/name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault' => 'SOAP::WSDL::SOAP::Typelib::Fault11',
               'selectLogFiles/FileSelectionCriteria/ServiceLogs/item' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFiles/FileSelectionCriteria/ZipInfo' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'selectLogFiles/FileSelectionCriteria/Password' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'listNodeServiceLogsResponse/listNodeServiceLogsReturn/ServiceLog' => 'CiscoUC::Log::9_1::Types::ArrayOfServiceLog',
               'Fault/faultactor' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
               'listNodeServiceLogs/ListRequest' => 'CiscoUC::Log::9_1::Types::ListRequest',
               'selectLogFiles/FileSelectionCriteria' => 'CiscoUC::Log::9_1::Types::SchemaFileSelectionCriteria',
               'selectLogFiles/FileSelectionCriteria/TimeZone' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node/ServiceList/ServiceLogs/SetOfFiles/File/absolutepath' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'listNodeServiceLogsResponse' => 'CiscoUC::Log::9_1::Elements::listNodeServiceLogsResponse',
               'Fault/detail' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFilesResponse/ResultSet/SchemaFileSelectionResult/Node/ServiceList/ServiceLogs' => 'CiscoUC::Log::9_1::Types::ServiceLogs',
               'selectLogFiles/FileSelectionCriteria/SystemLogs/item' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'selectLogFiles/FileSelectionCriteria/SearchStr' => 'SOAP::WSDL::XSD::Typelib::Builtin::string'
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

CiscoUC::Log::9_1::Typemaps::LogCollectionPortTypeService - typemap for LogCollectionPortTypeService

=head1 DESCRIPTION

Typemap created by SOAP::WSDL for map-based SOAP message parsers.

=cut

