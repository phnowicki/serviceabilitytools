
package MyTypemaps::ControlCenterServices;
use strict;
use warnings;

our $typemap_1 = {
               'getProductInformationListResponse/getProductInformationListReturn/Products' => 'MyTypes::ArrayOfInstalledProduct',
               'getProductInformationListResponse/getProductInformationListReturn/PrimaryNode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment/DeploymentServiceRequest/ServiceList' => 'MyTypes::ArrayOfServices',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item' => 'MyTypes::ServiceInformation',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServices' => 'MyElements::soapDoControlServices',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ReasonString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/faultcode' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ReasonString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatus' => 'MyElements::soapGetServiceStatus',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/DependentServices/Service' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn' => 'MyTypes::StaticServiceList',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/GroupName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item' => 'MyTypes::InstalledProduct',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductID' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ReturnCode' => 'MyTypes::ReturnCode',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/UpTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'getProductInformationList/ServiceInfo' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/ServiceType' => 'MyTypes::ServiceTypes',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ReasonString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment' => 'MyElements::soapDoServiceDeployment',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/UpTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoControlServices/ControlServiceRequest/NodeName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ReturnCode' => 'MyTypes::ReturnCode',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductDescription' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ServiceStatus' => 'MyTypes::ServiceStatus',
               'soapDoServiceDeployment/DeploymentServiceRequest/ServiceList/item' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ServiceStatus' => 'MyTypes::ServiceStatus',
               'getProductInformationListResponse/getProductInformationListReturn/SecondaryNode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/ProductID' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServices/ControlServiceRequest/ControlType' => 'MyTypes::ControlType',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/faultstring' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ReasonCodeString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse' => 'MyElements::getProductInformationListResponse',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item' => 'MyTypes::ServiceSpecification',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList' => 'MyTypes::ArrayOfServiceInformation',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList' => 'MyTypes::ArrayOfServiceInformation',
               'Fault/detail' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServices/ControlServiceRequest/ServiceList/item' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment/DeploymentServiceRequest/NodeName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/StartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/GroupName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ShortName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServicesResponse' => 'MyElements::soapDoControlServicesResponse',
               'soapGetStaticServiceListResponse' => 'MyElements::soapGetStaticServiceListResponse',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/StartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse' => 'MyElements::soapGetServiceStatusResponse',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn' => 'MyTypes::ServiceInformationResponse',
               'soapDoServiceDeployment/DeploymentServiceRequest/DeployType' => 'MyTypes::DeployType',
               'soapGetStaticServiceList' => 'MyElements::soapGetStaticServiceList',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ServiceStatus' => 'MyTypes::ServiceStatus',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList' => 'MyTypes::ArrayOfServiceInformation',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item' => 'MyTypes::ServiceInformation',
               'getProductInformationListResponse/getProductInformationListReturn' => 'MyTypes::GetProductInformationListResponse',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/DependentServices/Service' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/ServiceType' => 'MyTypes::ServiceTypes',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductVersion' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ReasonCodeString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/Deployable' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'soapDoControlServices/ControlServiceRequest' => 'MyTypes::ControlServiceRequest',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ReasonCodeString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/DependentServices' => 'MyTypes::DependentServices',
               'soapGetServiceStatus/ServiceStatus' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/UpTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ReturnCode' => 'MyTypes::ReturnCode',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/StartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/DependentServices' => 'MyTypes::DependentServices',
               'soapDoControlServices/ControlServiceRequest/ServiceList' => 'MyTypes::ArrayOfServices',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'getProductInformationListResponse/getProductInformationListReturn/ActiveServerVersion' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment/DeploymentServiceRequest' => 'MyTypes::DeploymentServiceRequest',
               'soapDoServiceDeploymentResponse' => 'MyElements::soapDoServiceDeploymentResponse',
               'Fault' => 'SOAP::WSDL::SOAP::Typelib::Fault11',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services' => 'MyTypes::ArrayOfServiceSpecification',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/Deployable' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/faultactor' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
               'soapGetStaticServiceList/ServiceInformationResponse' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item' => 'MyTypes::ServiceInformation',
               'getProductInformationListResponse/getProductInformationListReturn/Services' => 'MyTypes::ArrayOfProductServiceSpecification',
               'soapDoControlServicesResponse/soapDoControlServicesReturn' => 'MyTypes::ServiceInformationResponse',
               'getProductInformationList' => 'MyElements::getProductInformationList',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item' => 'MyTypes::ProductServiceSpecification',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn' => 'MyTypes::ServiceInformationResponse'
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

MyTypemaps::ControlCenterServices - typemap for ControlCenterServices

=head1 DESCRIPTION

Typemap created by SOAP::WSDL for map-based SOAP message parsers.

=cut

