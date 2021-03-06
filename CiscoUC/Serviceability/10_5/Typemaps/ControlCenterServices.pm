
package CiscoUC::Serviceability::10_5::Typemaps::ControlCenterServices;
use strict;
use warnings;

our $typemap_1 = {
               'getProductInformationListResponse/getProductInformationListReturn/Products' => 'CiscoUC::Serviceability::10_5::Types::ArrayOfInstalledProduct',
               'getProductInformationListResponse/getProductInformationListReturn/PrimaryNode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment/DeploymentServiceRequest/ServiceList' => 'CiscoUC::Serviceability::10_5::Types::ArrayOfServices',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item' => 'CiscoUC::Serviceability::10_5::Types::ServiceInformation',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServices' => 'CiscoUC::Serviceability::10_5::Elements::soapDoControlServices',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ReasonString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/faultcode' => 'SOAP::WSDL::XSD::Typelib::Builtin::anyURI',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ReasonString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatus' => 'CiscoUC::Serviceability::10_5::Elements::soapGetServiceStatus',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/DependentServices/Service' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn' => 'CiscoUC::Serviceability::10_5::Types::StaticServiceList',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/GroupName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item' => 'CiscoUC::Serviceability::10_5::Types::InstalledProduct',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductID' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ReturnCode' => 'CiscoUC::Serviceability::10_5::Types::ReturnCode',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/UpTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'getProductInformationList/ServiceInfo' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/ServiceType' => 'CiscoUC::Serviceability::10_5::Types::ServiceTypes',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ReasonString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment' => 'CiscoUC::Serviceability::10_5::Elements::soapDoServiceDeployment',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/UpTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoControlServices/ControlServiceRequest/NodeName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ReturnCode' => 'CiscoUC::Serviceability::10_5::Types::ReturnCode',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductDescription' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ServiceStatus' => 'CiscoUC::Serviceability::10_5::Types::ServiceStatus',
               'soapDoServiceDeployment/DeploymentServiceRequest/ServiceList/item' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ServiceStatus' => 'CiscoUC::Serviceability::10_5::Types::ServiceStatus',
               'getProductInformationListResponse/getProductInformationListReturn/SecondaryNode' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/ProductID' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServices/ControlServiceRequest/ControlType' => 'CiscoUC::Serviceability::10_5::Types::ControlType',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'Fault/faultstring' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ReasonCodeString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse' => 'CiscoUC::Serviceability::10_5::Elements::getProductInformationListResponse',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item' => 'CiscoUC::Serviceability::10_5::Types::ServiceSpecification',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList' => 'CiscoUC::Serviceability::10_5::Types::ArrayOfServiceInformation',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList' => 'CiscoUC::Serviceability::10_5::Types::ArrayOfServiceInformation',
               'Fault/detail' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServices/ControlServiceRequest/ServiceList/item' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment/DeploymentServiceRequest/NodeName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/StartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/GroupName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ShortName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoControlServicesResponse' => 'CiscoUC::Serviceability::10_5::Elements::soapDoControlServicesResponse',
               'soapGetStaticServiceListResponse' => 'CiscoUC::Serviceability::10_5::Elements::soapGetStaticServiceListResponse',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/StartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse' => 'CiscoUC::Serviceability::10_5::Elements::soapGetServiceStatusResponse',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn' => 'CiscoUC::Serviceability::10_5::Types::ServiceInformationResponse',
               'soapDoServiceDeployment/DeploymentServiceRequest/DeployType' => 'CiscoUC::Serviceability::10_5::Types::DeployType',
               'soapGetStaticServiceList' => 'CiscoUC::Serviceability::10_5::Elements::soapGetStaticServiceList',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ServiceName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/ServiceStatus' => 'CiscoUC::Serviceability::10_5::Types::ServiceStatus',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList' => 'CiscoUC::Serviceability::10_5::Types::ArrayOfServiceInformation',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item' => 'CiscoUC::Serviceability::10_5::Types::ServiceInformation',
               'getProductInformationListResponse/getProductInformationListReturn' => 'CiscoUC::Serviceability::10_5::Types::GetProductInformationListResponse',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/DependentServices/Service' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/ServiceType' => 'CiscoUC::Serviceability::10_5::Types::ServiceTypes',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductVersion' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/ReasonCodeString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/Deployable' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'soapDoControlServices/ControlServiceRequest' => 'CiscoUC::Serviceability::10_5::Types::ControlServiceRequest',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ServiceInfoList/item/ReasonCodeString' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item/DependentServices' => 'CiscoUC::Serviceability::10_5::Types::DependentServices',
               'soapGetServiceStatus/ServiceStatus' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ServiceInfoList/item/UpTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ReturnCode' => 'CiscoUC::Serviceability::10_5::Types::ReturnCode',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item/StartTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/DependentServices' => 'CiscoUC::Serviceability::10_5::Types::DependentServices',
               'soapDoControlServices/ControlServiceRequest/ServiceList' => 'CiscoUC::Serviceability::10_5::Types::ArrayOfServices',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoControlServicesResponse/soapDoControlServicesReturn/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'getProductInformationListResponse/getProductInformationListReturn/ActiveServerVersion' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeployment/DeploymentServiceRequest' => 'CiscoUC::Serviceability::10_5::Types::DeploymentServiceRequest',
               'soapDoServiceDeploymentResponse' => 'CiscoUC::Serviceability::10_5::Elements::soapDoServiceDeploymentResponse',
               'Fault' => 'SOAP::WSDL::SOAP::Typelib::Fault11',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services' => 'CiscoUC::Serviceability::10_5::Types::ArrayOfServiceSpecification',
               'soapGetStaticServiceListResponse/soapGetStaticServiceListReturn/Services/item/Deployable' => 'SOAP::WSDL::XSD::Typelib::Builtin::boolean',
               'Fault/faultactor' => 'SOAP::WSDL::XSD::Typelib::Builtin::token',
               'soapGetStaticServiceList/ServiceInformationResponse' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapGetServiceStatusResponse/soapGetServiceStatusReturn/ReasonCode' => 'SOAP::WSDL::XSD::Typelib::Builtin::integer',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn/ServiceInfoList/item' => 'CiscoUC::Serviceability::10_5::Types::ServiceInformation',
               'getProductInformationListResponse/getProductInformationListReturn/Services' => 'CiscoUC::Serviceability::10_5::Types::ArrayOfProductServiceSpecification',
               'soapDoControlServicesResponse/soapDoControlServicesReturn' => 'CiscoUC::Serviceability::10_5::Types::ServiceInformationResponse',
               'getProductInformationList' => 'CiscoUC::Serviceability::10_5::Elements::getProductInformationList',
               'getProductInformationListResponse/getProductInformationListReturn/Services/item' => 'CiscoUC::Serviceability::10_5::Types::ProductServiceSpecification',
               'getProductInformationListResponse/getProductInformationListReturn/Products/item/ProductName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
               'soapDoServiceDeploymentResponse/soapDoServiceDeploymentReturn' => 'CiscoUC::Serviceability::10_5::Types::ServiceInformationResponse'
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

CiscoUC::Serviceability::10_5::Typemaps::ControlCenterServices - typemap for ControlCenterServices

=head1 DESCRIPTION

Typemap created by SOAP::WSDL for map-based SOAP message parsers.

=cut

