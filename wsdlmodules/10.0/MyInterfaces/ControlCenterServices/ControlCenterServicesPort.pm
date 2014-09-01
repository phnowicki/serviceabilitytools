package MyInterfaces::ControlCenterServices::ControlCenterServicesPort;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);


# only load if it hasn't been loaded before
require MyTypemaps::ControlCenterServices
    if not MyTypemaps::ControlCenterServices->can('get_class');


sub START {
    $_[0]->set_proxy('https://192.168.1.45:8443/controlcenterservice2/services/ControlCenterServices') if not $_[2]->{proxy};

    $_[0]->set_class_resolver('MyTypemaps::ControlCenterServices')
        if not $_[2]->{class_resolver};

    $_[0]->set_prefix($_[2]->{use_prefix}) if exists $_[2]->{use_prefix};
}

sub soapGetStaticServiceList {
    my ($self, $body, $header) = @_;
    die "soapGetStaticServiceList must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'soapGetStaticServiceList',
        soap_action => 'soapGetStaticServiceList',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::soapGetStaticServiceList )],
        },
        header => {
            
        },
        headerfault => {
            
        },
        response => {
            header => {
                
            },
            body => {
                

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::soapGetStaticServiceListResponse )],
            },
        }
    }, $body, $header);
}


sub soapGetServiceStatus {
    my ($self, $body, $header) = @_;
    die "soapGetServiceStatus must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'soapGetServiceStatus',
        soap_action => 'soapGetServiceStatus',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::soapGetServiceStatus )],
        },
        header => {
            
        },
        headerfault => {
            
        },
        response => {
            header => {
                
            },
            body => {
                

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::soapGetServiceStatusResponse )],
            },
        }
    }, $body, $header);
}


sub soapDoServiceDeployment {
    my ($self, $body, $header) = @_;
    die "soapDoServiceDeployment must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'soapDoServiceDeployment',
        soap_action => 'soapDoServiceDeployment',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::soapDoServiceDeployment )],
        },
        header => {
            
        },
        headerfault => {
            
        },
        response => {
            header => {
                
            },
            body => {
                

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::soapDoServiceDeploymentResponse )],
            },
        }
    }, $body, $header);
}


sub soapDoControlServices {
    my ($self, $body, $header) = @_;
    die "soapDoControlServices must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'soapDoControlServices',
        soap_action => 'soapDoControlServices',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::soapDoControlServices )],
        },
        header => {
            
        },
        headerfault => {
            
        },
        response => {
            header => {
                
            },
            body => {
                

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::soapDoControlServicesResponse )],
            },
        }
    }, $body, $header);
}


sub getProductInformationList {
    my ($self, $body, $header) = @_;
    die "getProductInformationList must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'getProductInformationList',
        soap_action => 'getProductInformationList',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::getProductInformationList )],
        },
        header => {
            
        },
        headerfault => {
            
        },
        response => {
            header => {
                
            },
            body => {
                

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( MyElements::getProductInformationListResponse )],
            },
        }
    }, $body, $header);
}





sub _get_name_resolver {

    my $prefix_1 = {
              'attribute' => 'MyAttributes',
              'typemap' => 'MyTypemaps',
              'interface' => 'MyInterfaces',
              'type' => 'MyTypes',
              'server' => 'MyServer',
              'element' => 'MyElements'
            };


    return SOAP::WSDL::Generator::Template::Plugin::XSD->new({
        prefix_resolver => SOAP::WSDL::Generator::PrefixResolver->new({
            namespace_prefix_map => {
                'http://www.w3.org/2001/XMLSchema' => 'SOAP::WSDL::XSD::Typelib::Builtin',
            },
            namespace_map => {
            },
            prefix => $prefix_1,
        })
    });
}

1;



__END__

=pod

=head1 NAME

MyInterfaces::ControlCenterServices::ControlCenterServicesPort - SOAP Interface for the ControlCenterServices Web Service

=head1 SYNOPSIS

 use MyInterfaces::ControlCenterServices::ControlCenterServicesPort;
 my $interface = MyInterfaces::ControlCenterServices::ControlCenterServicesPort->new();

 my $response;
 $response = $interface->soapGetStaticServiceList();
 $response = $interface->soapGetServiceStatus();
 $response = $interface->soapDoServiceDeployment();
 $response = $interface->soapDoControlServices();
 $response = $interface->getProductInformationList();



=head1 DESCRIPTION

SOAP Interface for the ControlCenterServices web service
located at https://192.168.1.45:8443/controlcenterservice2/services/ControlCenterServices.

=head1 SERVICE ControlCenterServices



=head2 Port ControlCenterServicesPort



=head1 METHODS

=head2 General methods

=head3 new

Constructor.

All arguments are forwarded to L<SOAP::WSDL::Client|SOAP::WSDL::Client>.

=head2 SOAP Service methods

Method synopsis is displayed with hash refs as parameters.

The commented class names in the method's parameters denote that objects
of the corresponding class can be passed instead of the marked hash ref.

You may pass any combination of objects, hash and list refs to these
methods, as long as you meet the structure.

List items (i.e. multiple occurences) are not displayed in the synopsis.
You may generally pass a list ref of hash refs (or objects) instead of a hash
ref - this may result in invalid XML if used improperly, though. Note that
SOAP::WSDL always expects list references at maximum depth position.

XML attributes are not displayed in this synopsis and cannot be set using
hash refs. See the respective class' documentation for additional information.



=head3 soapGetStaticServiceList



Returns a L<MyElements::soapGetStaticServiceListResponse|MyElements::soapGetStaticServiceListResponse> object.

 $response = $interface->soapGetStaticServiceList( {
    ServiceInformationResponse =>  $some_value, # string
  },,
 );

=head3 soapGetServiceStatus



Returns a L<MyElements::soapGetServiceStatusResponse|MyElements::soapGetServiceStatusResponse> object.

 $response = $interface->soapGetServiceStatus( {
    ServiceStatus =>  $some_value, # string
  },,
 );

=head3 soapDoServiceDeployment



Returns a L<MyElements::soapDoServiceDeploymentResponse|MyElements::soapDoServiceDeploymentResponse> object.

 $response = $interface->soapDoServiceDeployment( {
    DeploymentServiceRequest =>  { # MyTypes::DeploymentServiceRequest
      NodeName =>  $some_value, # string
      DeployType => $some_value, # DeployType
      ServiceList =>  { # MyTypes::ArrayOfServices
        item =>  $some_value, # string
      },
    },
  },,
 );

=head3 soapDoControlServices



Returns a L<MyElements::soapDoControlServicesResponse|MyElements::soapDoControlServicesResponse> object.

 $response = $interface->soapDoControlServices( {
    ControlServiceRequest =>  { # MyTypes::ControlServiceRequest
      NodeName =>  $some_value, # string
      ControlType => $some_value, # ControlType
      ServiceList =>  { # MyTypes::ArrayOfServices
        item =>  $some_value, # string
      },
    },
  },,
 );

=head3 getProductInformationList



Returns a L<MyElements::getProductInformationListResponse|MyElements::getProductInformationListResponse> object.

 $response = $interface->getProductInformationList( {
    ServiceInfo =>  $some_value, # string
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Thu Aug 28 17:53:05 2014

=cut
