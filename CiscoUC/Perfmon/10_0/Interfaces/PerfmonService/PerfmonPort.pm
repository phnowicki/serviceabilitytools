package CiscoUC::Perfmon::10_0::Interfaces::PerfmonService::PerfmonPort;
use strict;
use warnings;
use Class::Std::Fast::Storable;
use Scalar::Util qw(blessed);
use base qw(SOAP::WSDL::Client::Base);

# only load if it hasn't been loaded before
require CiscoUC::Perfmon::10_0::Typemaps::PerfmonService
    if not CiscoUC::Perfmon::10_0::Typemaps::PerfmonService->can('get_class');

sub START {
    $_[0]->set_proxy('https://192.168.1.45:8443/perfmonservice2/services/PerfmonService') if not $_[2]->{proxy};
    $_[0]->set_class_resolver('CiscoUC::Perfmon::10_0::Typemaps::PerfmonService')
        if not $_[2]->{class_resolver};

    $_[0]->set_prefix($_[2]->{use_prefix}) if exists $_[2]->{use_prefix};
}

sub perfmonOpenSession {
    my ($self, $body, $header) = @_;
    die "perfmonOpenSession must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'perfmonOpenSession',
        soap_action => 'perfmonOpenSession',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Perfmon::10_0::Elements::perfmonOpenSession )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub perfmonAddCounter {
    my ($self, $body, $header) = @_;
    die "perfmonAddCounter must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'perfmonAddCounter',
        soap_action => 'perfmonAddCounter',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Perfmon::10_0::Elements::perfmonAddCounter )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub perfmonRemoveCounter {
    my ($self, $body, $header) = @_;
    die "perfmonRemoveCounter must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'perfmonRemoveCounter',
        soap_action => 'perfmonRemoveCounter',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Perfmon::10_0::Elements::perfmonRemoveCounter )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub perfmonCollectSessionData {
    my ($self, $body, $header) = @_;
    die "perfmonCollectSessionData must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'perfmonCollectSessionData',
        soap_action => 'perfmonCollectSessionData',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Perfmon::10_0::Elements::perfmonCollectSessionData )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub perfmonCloseSession {
    my ($self, $body, $header) = @_;
    die "perfmonCloseSession must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'perfmonCloseSession',
        soap_action => 'perfmonCloseSession',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Perfmon::10_0::Elements::perfmonCloseSession )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub perfmonListInstance {
    my ($self, $body, $header) = @_;
    die "perfmonListInstance must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'perfmonListInstance',
        soap_action => 'perfmonListInstance',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Perfmon::10_0::Elements::perfmonListInstance )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub perfmonQueryCounterDescription {
    my ($self, $body, $header) = @_;
    die "perfmonQueryCounterDescription must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'perfmonQueryCounterDescription',
        soap_action => 'perfmonQueryCounterDescription',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Perfmon::10_0::Elements::perfmonQueryCounterDescription )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub perfmonListCounter {
    my ($self, $body, $header) = @_;
    die "perfmonListCounter must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'perfmonListCounter',
        soap_action => 'perfmonListCounter',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Perfmon::10_0::Elements::perfmonListCounter )],
        },
        header => {
            
        },
        headerfault => {
            
        }
    }, $body, $header);
}


sub perfmonCollectCounterData {
    my ($self, $body, $header) = @_;
    die "perfmonCollectCounterData must be called as object method (\$self is <$self>)" if not blessed($self);
    return $self->SUPER::call({
        operation => 'perfmonCollectCounterData',
        soap_action => 'perfmonCollectCounterData',
        style => 'document',
        body => {
            

           'use'            => 'literal',
            namespace       => 'http://schemas.xmlsoap.org/wsdl/soap/',
            encodingStyle   => '',
            parts           =>  [qw( CiscoUC::Perfmon::10_0::Elements::perfmonCollectCounterData )],
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

CiscoUC::Perfmon::10_0::Interfaces::PerfmonService::PerfmonPort - SOAP Interface for the PerfmonService Web Service

=head1 SYNOPSIS

 use CiscoUC::Perfmon::10_0::Interfaces::PerfmonService::PerfmonPort;
 my $interface = CiscoUC::Perfmon::10_0::Interfaces::PerfmonService::PerfmonPort->new();

 my $response;
 $response = $interface->perfmonOpenSession();
 $response = $interface->perfmonAddCounter();
 $response = $interface->perfmonRemoveCounter();
 $response = $interface->perfmonCollectSessionData();
 $response = $interface->perfmonCloseSession();
 $response = $interface->perfmonListInstance();
 $response = $interface->perfmonQueryCounterDescription();
 $response = $interface->perfmonListCounter();
 $response = $interface->perfmonCollectCounterData();



=head1 DESCRIPTION

SOAP Interface for the PerfmonService web service
located at https://192.168.1.45:8443/perfmonservice2/services/PerfmonService.

=head1 SERVICE PerfmonService



=head2 Port PerfmonPort



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



=head3 perfmonOpenSession



Returns a L<CiscoUC::Perfmon::10_0::Elements::perfmonOpenSessionResponse|CiscoUC::Perfmon::10_0::Elements::perfmonOpenSessionResponse> object.

 $response = $interface->perfmonOpenSession(,,
 );

=head3 perfmonAddCounter



Returns a L<CiscoUC::Perfmon::10_0::Elements::perfmonAddCounterResponse|CiscoUC::Perfmon::10_0::Elements::perfmonAddCounterResponse> object.

 $response = $interface->perfmonAddCounter( {
    SessionHandle =>  { value => $some_value },
    ArrayOfCounter =>  { # CiscoUC::Perfmon::10_0::Types::RequestArrayOfCounterType
      Counter =>  { # CiscoUC::Perfmon::10_0::Types::CounterType
        Name =>  { value => $some_value },
      },
    },
  },,
 );

=head3 perfmonRemoveCounter



Returns a L<CiscoUC::Perfmon::10_0::Elements::perfmonRemoveCounterResponse|CiscoUC::Perfmon::10_0::Elements::perfmonRemoveCounterResponse> object.

 $response = $interface->perfmonRemoveCounter( {
    SessionHandle =>  { value => $some_value },
    ArrayOfCounter =>  { # CiscoUC::Perfmon::10_0::Types::RequestArrayOfCounterType
      Counter =>  { # CiscoUC::Perfmon::10_0::Types::CounterType
        Name =>  { value => $some_value },
      },
    },
  },,
 );

=head3 perfmonCollectSessionData



Returns a L<CiscoUC::Perfmon::10_0::Elements::perfmonCollectSessionDataResponse|CiscoUC::Perfmon::10_0::Elements::perfmonCollectSessionDataResponse> object.

 $response = $interface->perfmonCollectSessionData( {
    SessionHandle =>  { value => $some_value },
  },,
 );

=head3 perfmonCloseSession



Returns a L<CiscoUC::Perfmon::10_0::Elements::perfmonCloseSessionResponse|CiscoUC::Perfmon::10_0::Elements::perfmonCloseSessionResponse> object.

 $response = $interface->perfmonCloseSession( {
    SessionHandle =>  { value => $some_value },
  },,
 );

=head3 perfmonListInstance



Returns a L<CiscoUC::Perfmon::10_0::Elements::perfmonListInstanceResponse|CiscoUC::Perfmon::10_0::Elements::perfmonListInstanceResponse> object.

 $response = $interface->perfmonListInstance( {
    Host =>  $some_value, # string
    Object =>  { value => $some_value },
  },,
 );

=head3 perfmonQueryCounterDescription



Returns a L<CiscoUC::Perfmon::10_0::Elements::perfmonQueryCounterDescriptionResponse|CiscoUC::Perfmon::10_0::Elements::perfmonQueryCounterDescriptionResponse> object.

 $response = $interface->perfmonQueryCounterDescription( {
    Counter =>  { value => $some_value },
  },,
 );

=head3 perfmonListCounter



Returns a L<CiscoUC::Perfmon::10_0::Elements::perfmonListCounterResponse|CiscoUC::Perfmon::10_0::Elements::perfmonListCounterResponse> object.

 $response = $interface->perfmonListCounter( {
    Host =>  $some_value, # string
  },,
 );

=head3 perfmonCollectCounterData



Returns a L<CiscoUC::Perfmon::10_0::Elements::perfmonCollectCounterDataResponse|CiscoUC::Perfmon::10_0::Elements::perfmonCollectCounterDataResponse> object.

 $response = $interface->perfmonCollectCounterData( {
    Host =>  $some_value, # string
    Object =>  { value => $some_value },
  },,
 );



=head1 AUTHOR

Generated by SOAP::WSDL on Sat Sep  6 22:25:28 2014

=cut
