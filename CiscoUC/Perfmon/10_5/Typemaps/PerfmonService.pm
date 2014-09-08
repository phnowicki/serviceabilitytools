
package CiscoUC::Perfmon::10_5::Typemaps::PerfmonService;
use strict;
use warnings;

our $typemap_1 = {
               'perfmonListInstance' => 'CiscoUC::Perfmon::10_5::Elements::perfmonListInstance',
               'perfmonQueryCounterDescriptionResponse' => 'CiscoUC::Perfmon::10_5::Elements::perfmonQueryCounterDescriptionResponse',
               'perfmonCollectCounterDataResponse/perfmonCollectCounterDataReturn/CStatus' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
               'Fault/faultcode' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
               'perfmonOpenSession' => 'CiscoUC::Perfmon::10_5::Elements::perfmonOpenSession',
               'perfmonListInstanceResponse/perfmonListInstanceReturn' => 'CiscoUC::Perfmon::10_5::Types::InstanceType',
               'perfmonCloseSessionResponse' => 'CiscoUC::Perfmon::10_5::Elements::perfmonCloseSessionResponse',
               'perfmonListInstance/Object' => 'CiscoUC::Perfmon::10_5::Types::ObjectNameType',
               'perfmonCloseSession/SessionHandle' => 'CiscoUC::Perfmon::10_5::Types::SessionHandleType',
               'perfmonAddCounter/ArrayOfCounter' => 'CiscoUC::Perfmon::10_5::Types::RequestArrayOfCounterType',
               'perfmonCollectCounterDataResponse/perfmonCollectCounterDataReturn' => 'CiscoUC::Perfmon::10_5::Types::CounterInfoType',
               'perfmonCollectCounterDataResponse/perfmonCollectCounterDataReturn/Name' => 'CiscoUC::Perfmon::10_5::Types::CounterNameType',
               'perfmonListInstanceResponse' => 'CiscoUC::Perfmon::10_5::Elements::perfmonListInstanceResponse',
               'perfmonListCounterResponse/perfmonListCounterReturn' => 'CiscoUC::Perfmon::10_5::Types::ObjectInfoType',
               'perfmonCollectSessionDataResponse/perfmonCollectSessionDataReturn/Name' => 'CiscoUC::Perfmon::10_5::Types::CounterNameType',
               'perfmonListCounterResponse/perfmonListCounterReturn/Name' => 'CiscoUC::Perfmon::10_5::Types::ObjectNameType',
               'perfmonRemoveCounter/ArrayOfCounter/Counter/Name' => 'CiscoUC::Perfmon::10_5::Types::CounterNameType',
               'perfmonAddCounterResponse' => 'CiscoUC::Perfmon::10_5::Elements::perfmonAddCounterResponse',
               'perfmonAddCounter/ArrayOfCounter/Counter' => 'CiscoUC::Perfmon::10_5::Types::CounterType',
               'perfmonCollectCounterDataResponse/perfmonCollectCounterDataReturn/Value' => 'SOAP::WSDL::XSD::Typelib::Builtin::long',
               'perfmonQueryCounterDescriptionResponse/perfmonQueryCounterDescriptionReturn' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'perfmonCloseSession' => 'CiscoUC::Perfmon::10_5::Elements::perfmonCloseSession',
               'perfmonListCounter' => 'CiscoUC::Perfmon::10_5::Elements::perfmonListCounter',
               'perfmonRemoveCounter/ArrayOfCounter' => 'CiscoUC::Perfmon::10_5::Types::RequestArrayOfCounterType',
               'perfmonRemoveCounterResponse' => 'CiscoUC::Perfmon::10_5::Elements::perfmonRemoveCounterResponse',
               'perfmonCollectSessionDataResponse/perfmonCollectSessionDataReturn/CStatus' => 'SOAP::WSDL::XSD::Typelib::Builtin::unsignedInt',
               'perfmonListCounterResponse/perfmonListCounterReturn/ArrayOfCounter/item' => 'CiscoUC::Perfmon::10_5::Types::CounterType',
               'perfmonRemoveCounter/ArrayOfCounter/Counter' => 'CiscoUC::Perfmon::10_5::Types::CounterType',
               'perfmonCollectSessionDataResponse/perfmonCollectSessionDataReturn' => 'CiscoUC::Perfmon::10_5::Types::CounterInfoType',
               'perfmonCollectCounterData/Object' => 'CiscoUC::Perfmon::10_5::Types::ObjectNameType',
               'perfmonCollectSessionDataResponse' => 'CiscoUC::Perfmon::10_5::Elements::perfmonCollectSessionDataResponse',
               'perfmonCollectCounterData/Host' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'perfmonListCounterResponse/perfmonListCounterReturn/MultiInstance' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'perfmonCollectSessionData' => 'CiscoUC::Perfmon::10_5::Elements::perfmonCollectSessionData',
               'perfmonListCounterResponse/perfmonListCounterReturn/ArrayOfCounter/item/Name' => 'CiscoUC::Perfmon::10_5::Types::CounterNameType',
               'perfmonListCounter/Host' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'perfmonListCounterResponse/perfmonListCounterReturn/ArrayOfCounter' => 'CiscoUC::Perfmon::10_5::Types::ArrayOfCounterType',
               'perfmonCollectCounterDataResponse' => 'CiscoUC::Perfmon::10_5::Elements::perfmonCollectCounterDataResponse',
               'Fault/faultstring' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'perfmonQueryCounterDescription' => 'CiscoUC::Perfmon::10_5::Elements::perfmonQueryCounterDescription',
               'Fault' => 'SOAP::WSDL::SOAP::Typelib::Fault11',
               'perfmonCollectSessionData/SessionHandle' => 'CiscoUC::Perfmon::10_5::Types::SessionHandleType',
               'perfmonRemoveCounter/SessionHandle' => 'CiscoUC::Perfmon::10_5::Types::SessionHandleType',
               'perfmonListInstance/Host' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'perfmonCollectCounterData' => 'CiscoUC::Perfmon::10_5::Elements::perfmonCollectCounterData',
               'Fault/faultactor' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
               'perfmonQueryCounterDescription/Counter' => 'CiscoUC::Perfmon::10_5::Types::CounterNameType',
               'perfmonAddCounter/ArrayOfCounter/Counter/Name' => 'CiscoUC::Perfmon::10_5::Types::CounterNameType',
               'perfmonAddCounter' => 'CiscoUC::Perfmon::10_5::Elements::perfmonAddCounter',
               'perfmonRemoveCounter' => 'CiscoUC::Perfmon::10_5::Elements::perfmonRemoveCounter',
               'Fault/detail' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'perfmonListInstanceResponse/perfmonListInstanceReturn/Name' => 'CiscoUC::Perfmon::10_5::Types::InstanceNameType',
               'perfmonOpenSessionResponse/perfmonOpenSessionReturn' => 'CiscoUC::Perfmon::10_5::Types::SessionHandleType',
               'perfmonListCounterResponse' => 'CiscoUC::Perfmon::10_5::Elements::perfmonListCounterResponse',
               'perfmonOpenSessionResponse' => 'CiscoUC::Perfmon::10_5::Elements::perfmonOpenSessionResponse',
               'perfmonAddCounter/SessionHandle' => 'CiscoUC::Perfmon::10_5::Types::SessionHandleType',
               'perfmonCollectSessionDataResponse/perfmonCollectSessionDataReturn/Value' => 'SOAP::WSDL::XSD::Typelib::Builtin::long'
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

CiscoUC::Perfmon::10_5::Typemaps::PerfmonService - typemap for PerfmonService

=head1 DESCRIPTION

Typemap created by SOAP::WSDL for map-based SOAP message parsers.

=cut

