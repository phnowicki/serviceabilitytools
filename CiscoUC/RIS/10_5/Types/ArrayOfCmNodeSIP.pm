package CiscoUC::RIS::10_5::Types::ArrayOfCmNodeSIP;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %CmNodeSIP_of :ATTR(:get<CmNodeSIP>);

__PACKAGE__->_factory(
    [ qw(        CmNodeSIP

    ) ],
    {
        'CmNodeSIP' => \%CmNodeSIP_of,
    },
    {
        'CmNodeSIP' => 'CiscoUC::RIS::10_5::Types::CmNodeSIP',
    },
    {

        'CmNodeSIP' => 'CmNodeSIP',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::RIS::10_5::Types::ArrayOfCmNodeSIP

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ArrayOfCmNodeSIP from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * CmNodeSIP




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::RIS::10_5::Types::ArrayOfCmNodeSIP
   CmNodeSIP =>  { # CiscoUC::RIS::10_5::Types::CmNodeSIP
     ReturnCode => $some_value, # RisReturnCode
     Name =>  $some_value, # string
     NoChange =>  $some_value, # boolean
     CmDevices =>  { # CiscoUC::RIS::10_5::Types::ArrayOfCmDeviceSIP
       item =>  { # CiscoUC::RIS::10_5::Types::CmDeviceSIP
         Name =>  $some_value, # string
         IpAddress =>  $some_value, # string
         DirNumber =>  $some_value, # string
         DeviceClass => $some_value, # DeviceClass
         Model =>  $some_value, # unsignedInt
         Product =>  $some_value, # unsignedInt
         BoxProduct =>  $some_value, # unsignedInt
         Httpd => $some_value, # CmDevHttpd
         RegistrationAttempts =>  $some_value, # unsignedInt
         IsCtiControllable =>  $some_value, # boolean
         LoginUserId =>  $some_value, # string
         Status => $some_value, # CmDevRegStat
         StatusReason =>  $some_value, # unsignedInt
         PerfMonObject =>  $some_value, # unsignedInt
         DChannel =>  $some_value, # unsignedInt
         Description =>  $some_value, # string
         H323Trunk =>  { # CiscoUC::RIS::10_5::Types::H323Trunk
           ConfigName =>  $some_value, # string
           TechPrefix =>  $some_value, # string
           Zone =>  $some_value, # string
           RemoteCmServer1 =>  $some_value, # string
           RemoteCmServer2 =>  $some_value, # string
           RemoteCmServer3 =>  $some_value, # string
           AltGkList =>  $some_value, # string
           ActiveGk =>  $some_value, # string
           CallSignalAddr =>  $some_value, # string
           RasAddr =>  $some_value, # string
         },
         TimeStamp =>  $some_value, # unsignedInt
         Protocol => $some_value, # ProtocolType
         NumOfLines =>  $some_value, # unsignedInt
         LinesStatus =>  { # CiscoUC::RIS::10_5::Types::ArrayOfCmDevSingleLineStatus
           item =>  { # CiscoUC::RIS::10_5::Types::CmDevSingleLineStatus
             DirectoryNumber =>  $some_value, # string
             Status => $some_value, # CmSingleLineStatus
           },
         },
       },
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

