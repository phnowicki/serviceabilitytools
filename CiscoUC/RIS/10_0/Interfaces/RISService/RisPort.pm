package CiscoUC::RIS::10_0::Interfaces::RISService::RisPort;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);

# only load if it hasn't been loaded before
require CiscoUC::RIS::10_0::Typemaps::RISService
    if not CiscoUC::RIS::10_0::Typemaps::RISService->can('get_class');

sub START {
    $_[0]->set_proxy('https://192.168.1.45:8443/realtimeservice2/services/RISService') if not $_[2]->{proxy};
    $_[0]->set_class_resolver('CiscoUC::RIS::10_0::Typemaps::RISService')
        if not $_[2]->{class_resolver};

    $_[0]->set_prefix($_[2]->{use_prefix}) if exists $_[2]->{use_prefix};
}

sub selectCmDevice {
    my ($self, $body, $header) = @_;
    die "selectCmDevice must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'selectCmDevice',
        soap_action => 'selectCmDevice',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::RIS::10_0::Elements::selectCmDevice )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub selectCtiItem {
    my ($self, $body, $header) = @_;
    die "selectCtiItem must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'selectCtiItem',
        soap_action => 'selectCtiItem',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::RIS::10_0::Elements::selectCtiItem )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub executeCCMSQLStatement {
    my ($self, $body, $header) = @_;
    die "executeCCMSQLStatement must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'executeCCMSQLStatement',
        soap_action => 'executeCCMSQLStatement',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::RIS::10_0::Elements::executeCCMSQLStatement )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub getServerInfo {
    my ($self, $body, $header) = @_;
    die "getServerInfo must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'getServerInfo',
        soap_action => 'getServerInfo',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::RIS::10_0::Elements::getServerInfo )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub selectCmDeviceSIP {
    my ($self, $body, $header) = @_;
    die "selectCmDeviceSIP must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'selectCmDeviceSIP',
        soap_action => 'selectCmDeviceSIP',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::RIS::10_0::Elements::selectCmDeviceSIP )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}




1;



__END__

=pod

=head1 NAME

CiscoUC::RIS::10_0::Interfaces::RISService::RisPort - SOAP Interface for the RISService Web Service

=head1 SYNOPSIS

 use CiscoUC::RIS::10_0::Interfaces::RISService::RisPort;
 my $interface = CiscoUC::RIS::10_0::Interfaces::RISService::RisPort->new();

 my $response;
 $response = $interface->selectCmDevice();
 $response = $interface->selectCtiItem();
 $response = $interface->executeCCMSQLStatement();
 $response = $interface->getServerInfo();
 $response = $interface->selectCmDeviceSIP();



=head1 DESCRIPTION

SOAP Interface for the RISService web service
located at https://192.168.1.45:8443/realtimeservice2/services/RISService.

=head1 SERVICE RISService



=head2 Port RisPort



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



=head3 selectCmDevice



Returns a L<CiscoUC::RIS::10_0::Elements::selectCmDeviceResponse|CiscoUC::RIS::10_0::Elements::selectCmDeviceResponse> object.

 $response = $interface->selectCmDevice( {
    StateInfo =>  $some_value, # string
    CmSelectionCriteria =>  { # CiscoUC::RIS::10_0::Types::CmSelectionCriteria
      MaxReturnedDevices =>  $some_value, # unsignedInt
      DeviceClass =>  $some_value, # string
      Model =>  $some_value, # unsignedInt
      Status =>  $some_value, # string
      NodeName =>  $some_value, # string
      SelectBy =>  $some_value, # string
      SelectItems =>  { # CiscoUC::RIS::10_0::Types::ArrayOfSelectItem
        item =>  { # CiscoUC::RIS::10_0::Types::SelectItem
          Item =>  $some_value, # string
        },
      },
    },
  },,
 );

=head3 selectCtiItem



Returns a L<CiscoUC::RIS::10_0::Elements::selectCtiItemResponse|CiscoUC::RIS::10_0::Elements::selectCtiItemResponse> object.

 $response = $interface->selectCtiItem( {
    StateInfo =>  $some_value, # string
    CtiSelectionCriteria =>  { # CiscoUC::RIS::10_0::Types::CtiSelectionCriteria
      MaxReturnedItems =>  $some_value, # unsignedInt
      CtiMgrClass => $some_value, # CtiMgrClass
      Status => $some_value, # CtiStatus
      NodeName =>  $some_value, # string
      SelectAppBy => $some_value, # CtiSelectAppBy
      AppItems =>  { # CiscoUC::RIS::10_0::Types::ArrayOfSelectAppItem
        SelectAppItem =>  { # CiscoUC::RIS::10_0::Types::SelectAppItem
          AppItem =>  $some_value, # string
        },
      },
      DevNames =>  { # CiscoUC::RIS::10_0::Types::ArrayOfSelectDevName
        SelectDevName =>  { # CiscoUC::RIS::10_0::Types::SelectDevName
          DevName =>  $some_value, # string
        },
      },
      DirNumbers =>  { # CiscoUC::RIS::10_0::Types::ArrayOfSelectDirNumber
        item =>  { # CiscoUC::RIS::10_0::Types::SelectDirNumber
          DirNumber =>  $some_value, # string
        },
      },
    },
  },,
 );

=head3 executeCCMSQLStatement



Returns a L<CiscoUC::RIS::10_0::Elements::executeCCMSQLStatementResponse|CiscoUC::RIS::10_0::Elements::executeCCMSQLStatementResponse> object.

 $response = $interface->executeCCMSQLStatement( {
    ExecuteSQLInputData =>  $some_value, # string
    GetColumns =>  { # CiscoUC::RIS::10_0::Types::ColumnType
      ColumnName =>  $some_value, # string
    },
  },,
 );

=head3 getServerInfo



Returns a L<CiscoUC::RIS::10_0::Elements::getServerInfoResponse|CiscoUC::RIS::10_0::Elements::getServerInfoResponse> object.

 $response = $interface->getServerInfo( {
    Hosts =>  { # CiscoUC::RIS::10_0::Types::Hosts
      Name =>  $some_value, # string
    },
  },,
 );

=head3 selectCmDeviceSIP



Returns a L<CiscoUC::RIS::10_0::Elements::selectCmDeviceSIPResponse|CiscoUC::RIS::10_0::Elements::selectCmDeviceSIPResponse> object.

 $response = $interface->selectCmDeviceSIP( {
    StateInfo =>  $some_value, # string
    CmSelectionCriteriaSIP =>  { # CiscoUC::RIS::10_0::Types::CmSelectionCriteriaSIP
      MaxReturnedDevices =>  $some_value, # unsignedInt
      DeviceClass =>  $some_value, # string
      Model =>  $some_value, # unsignedInt
      Status =>  $some_value, # string
      NodeName =>  $some_value, # string
      SelectBy =>  $some_value, # string
      SelectItems =>  { # CiscoUC::RIS::10_0::Types::ArrayOfSelectItem
        item =>  { # CiscoUC::RIS::10_0::Types::SelectItem
          Item =>  $some_value, # string
        },
      },
      Protocol => $some_value, # ProtocolType
    },
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Sat Sep  6 22:24:15 2014

=cut
