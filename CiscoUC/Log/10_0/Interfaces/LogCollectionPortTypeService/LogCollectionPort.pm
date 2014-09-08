package CiscoUC::Log::10_0::Interfaces::LogCollectionPortTypeService::LogCollectionPort;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);

# only load if it hasn't been loaded before
require CiscoUC::Log::10_0::Typemaps::LogCollectionPortTypeService
    if not CiscoUC::Log::10_0::Typemaps::LogCollectionPortTypeService->can('get_class');

sub START {
    $_[0]->set_proxy('https://192.168.1.45:8443/logcollectionservice2/services/LogCollectionPortTypeService') if not $_[2]->{proxy};
    $_[0]->set_class_resolver('CiscoUC::Log::10_0::Typemaps::LogCollectionPortTypeService')
        if not $_[2]->{class_resolver};

    $_[0]->set_prefix($_[2]->{use_prefix}) if exists $_[2]->{use_prefix};
}

sub listNodeServiceLogs {
    my ($self, $body, $header) = @_;
    die "listNodeServiceLogs must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'listNodeServiceLogs',
        soap_action => 'listNodeServiceLogs',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Log::10_0::Elements::listNodeServiceLogs )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub selectLogFiles {
    my ($self, $body, $header) = @_;
    die "selectLogFiles must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'selectLogFiles',
        soap_action => 'selectLogFiles',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Log::10_0::Elements::selectLogFiles )],
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

CiscoUC::Log::10_0::Interfaces::LogCollectionPortTypeService::LogCollectionPort - SOAP Interface for the LogCollectionPortTypeService Web Service

=head1 SYNOPSIS

 use CiscoUC::Log::10_0::Interfaces::LogCollectionPortTypeService::LogCollectionPort;
 my $interface = CiscoUC::Log::10_0::Interfaces::LogCollectionPortTypeService::LogCollectionPort->new();

 my $response;
 $response = $interface->listNodeServiceLogs();
 $response = $interface->selectLogFiles();



=head1 DESCRIPTION

SOAP Interface for the LogCollectionPortTypeService web service
located at https://192.168.1.45:8443/logcollectionservice2/services/LogCollectionPortTypeService.

=head1 SERVICE LogCollectionPortTypeService



=head2 Port LogCollectionPort



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



=head3 listNodeServiceLogs



Returns a L<CiscoUC::Log::10_0::Elements::listNodeServiceLogsResponse|CiscoUC::Log::10_0::Elements::listNodeServiceLogsResponse> object.

 $response = $interface->listNodeServiceLogs( {
    ListRequest =>  { value => $some_value },
  },,
 );

=head3 selectLogFiles



Returns a L<CiscoUC::Log::10_0::Elements::selectLogFilesResponse|CiscoUC::Log::10_0::Elements::selectLogFilesResponse> object.

 $response = $interface->selectLogFiles( {
    FileSelectionCriteria =>  { # CiscoUC::Log::10_0::Types::SchemaFileSelectionCriteria
      ServiceLogs =>  { # CiscoUC::Log::10_0::Types::ArrayOfServiceLog
        item =>  $some_value, # string
      },
      SystemLogs =>  { # CiscoUC::Log::10_0::Types::ArrayOfSystemLog
        item =>  $some_value, # string
      },
      SearchStr =>  $some_value, # string
      Frequency => $some_value, # Frequency
      JobType => $some_value, # JobType
      ToDate =>  $some_value, # string
      FromDate =>  $some_value, # string
      TimeZone =>  $some_value, # string
      RelText => $some_value, # RelText
      RelTime =>  $some_value, # byte
      Port =>  $some_value, # byte
      IPAddress =>  $some_value, # string
      UserName =>  $some_value, # string
      Password =>  $some_value, # string
      ZipInfo =>  $some_value, # boolean
      RemoteFolder =>  $some_value, # string
    },
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Sat Sep  6 22:25:03 2014

=cut
