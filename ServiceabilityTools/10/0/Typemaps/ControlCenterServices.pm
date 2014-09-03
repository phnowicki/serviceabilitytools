
package ServiceabilityTools::10::0::Typemaps::ControlCenterServices;
use strict;
use warnings;

our $typemap_1 = {
               'getProductInformationListResponse/getProductInformationListReturn/Products' => 'ServiceabilityTools::10::0::Types::ArrayOfInstalledProduct',
               'getProductInformationListResponse/getProductInformationListReturn/PrimaryNode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment/DeploymentServiceRequest/ServiceList' => 'ServiceabilityTools::10::0::Types::ArrayOfServices',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item' => 'ServiceabilityTools::10::0::Types::ServiceInformation',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServices' => 'ServiceabilityTools::10::0::Elements::soapDoControlServices',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ReasonString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/faultcode' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ReasonString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatus' => 'ServiceabilityTools::10::0::Elements::soapGetServiceStatus',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/DependentServices/Service' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn' => 'ServiceabilityTools::10::0::Types::StaticServiceList',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/GroupName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item' => 'ServiceabilityTools::10::0::Types::InstalledProduct',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductID' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ReturnCode' => 'ServiceabilityTools::10::0::Types::ReturnCode',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/UpTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'getProductInformationList/ServiceInfo' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/ServiceType' => 'ServiceabilityTools::10::0::Types::ServiceTypes',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ReasonString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment' => 'ServiceabilityTools::10::0::Elements::soapDoServiceDeployment',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/UpTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoControlServices/ControlServiceRequest/NodeName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ReturnCode' => 'ServiceabilityTools::10::0::Types::ReturnCode',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductDescription' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ServiceStatus' => 'ServiceabilityTools::10::0::Types::ServiceStatus',
               'soapDoServiceDeployment/DeploymentServiceRequest/ServiceList/item' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ServiceStatus' => 'ServiceabilityTools::10::0::Types::ServiceStatus',
               'getProductInformationListResponse/getProductInformationListReturn/SecondaryNode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/ProductID' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServices/ControlServiceRequest/ControlType' => 'ServiceabilityTools::10::0::Types::ControlType',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/faultstring' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ReasonCodeString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse' => 'ServiceabilityTools::10::0::Elements::getProductInformationListResponse',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item' => 'ServiceabilityTools::10::0::Types::ServiceSpecification',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList' => 'ServiceabilityTools::10::0::Types::ArrayOfServiceInformation',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList' => 'ServiceabilityTools::10::0::Types::ArrayOfServiceInformation',
               'Fault/detail' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServices/ControlServiceRequest/ServiceList/item' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment/DeploymentServiceRequest/NodeName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/StartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/GroupName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ShortName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServicesResponse' => 'ServiceabilityTools::10::0::Elements::soapDoControlServicesResponse',
               'soapGetStaticServiceListResponse' => 'ServiceabilityTools::10::0::Elements::soapGetStaticServiceListResponse',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/StartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse' => 'ServiceabilityTools::10::0::Elements::soapGetServiceStatusResponse',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn' => 'ServiceabilityTools::10::0::Types::ServiceInformationResponse',
               'soapDoServiceDeployment/DeploymentServiceRequest/DeployType' => 'ServiceabilityTools::10::0::Types::DeployType',
               'soapGetStaticServiceList' => 'ServiceabilityTools::10::0::Elements::soapGetStaticServiceList',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ServiceStatus' => 'ServiceabilityTools::10::0::Types::ServiceStatus',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList' => 'ServiceabilityTools::10::0::Types::ArrayOfServiceInformation',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item' => 'ServiceabilityTools::10::0::Types::ServiceInformation',
               'getProductInformationListResponse/getProductInformationListReturn' => 'ServiceabilityTools::10::0::Types::GetProductInformationListResponse',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/DependentServices/Service' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/ServiceType' => 'ServiceabilityTools::10::0::Types::ServiceTypes',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductVersion' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ReasonCodeString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/Deployable' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'soapDoControlServices/ControlServiceRequest' => 'ServiceabilityTools::10::0::Types::ControlServiceRequest',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ReasonCodeString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/DependentServices' => 'ServiceabilityTools::10::0::Types::DependentServices',
               'soapGetServiceStatus/ServiceStatus' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/UpTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ReturnCode' => 'ServiceabilityTools::10::0::Types::ReturnCode',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/StartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/DependentServices' => 'ServiceabilityTools::10::0::Types::DependentServices',
               'soapDoControlServices/ControlServiceRequest/ServiceList' => 'ServiceabilityTools::10::0::Types::ArrayOfServices',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'getProductInformationListResponse/getProductInformationListReturn/ActiveServerVersion' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment/DeploymentServiceRequest' => 'ServiceabilityTools::10::0::Types::DeploymentServiceRequest',
               'soapDoServiceDeploymentResponse' => 'ServiceabilityTools::10::0::Elements::soapDoServiceDeploymentResponse',
               'Fault' => 'SOAP::WSDL::SOAP::Typelib::Fault11',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services' => 'ServiceabilityTools::10::0::Types::ArrayOfServiceSpecification',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/Deployable' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/faultactor' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
               'soapGetStaticServiceList/ServiceInformationResponse' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item' => 'ServiceabilityTools::10::0::Types::ServiceInformation',
               'getProductInformationListResponse/getProductInformationListReturn/Services' => 'ServiceabilityTools::10::0::Types::ArrayOfProductServiceSpecification',
               'soapDoControlServicesResponse/soapDoControlServicesReturn' => 'ServiceabilityTools::10::0::Types::ServiceInformationResponse',
               'getProductInformationList' => 'ServiceabilityTools::10::0::Elements::getProductInformationList',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item' => 'ServiceabilityTools::10::0::Types::ProductServiceSpecification',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn' => 'ServiceabilityTools::10::0::Types::ServiceInformationResponse'
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

ServiceabilityTools::10::0::Typemaps::ControlCenterServices - typemap for ControlCenterServices

=head1 DESCRIPTION

Typemap created by SOAP::WSDL for map-based SOAP message parsers.

=cut

