
package MyElements::soapDoServiceDeploymentResponse;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('soapDoServiceDeploymentResponse');
__PACKAGE__->__set_nillable();
__PACKAGE__->__set_minOccurs();
__PACKAGE__->__set_maxOccurs();
__PACKAGE__->__set_ref();

use base qw(
    SOAP::WSDL::XSD::Typelib::Element
    SOAP::WSDL::XSD::Typelib::ComplexType
);

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %soapDoServiceDeploymentReturn_of :ATTR(:get<soapDoServiceDeploymentReturn>);

__PACKAGE__->_factory(
    [ qw(        soapDoServiceDeploymentReturn

    ) ],
    {
        'soapDoServiceDeploymentReturn' => \%soapDoServiceDeploymentReturn_of,
    },
    {
        'soapDoServiceDeploymentReturn' => 'MyTypes::ServiceInformationResponse',
    },
    {

        'soapDoServiceDeploymentReturn' => 'soapDoServiceDeploymentReturn',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

MyElements::soapDoServiceDeploymentResponse

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
soapDoServiceDeploymentResponse from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * soapDoServiceDeploymentReturn

 $element->set_soapDoServiceDeploymentReturn($data);
 $element->get_soapDoServiceDeploymentReturn();





=back


=head1 METHODS

=head2 new

 my $element = MyElements::soapDoServiceDeploymentResponse->new($data);

Constructor. The following data structure may be passed to new():

 {
   soapDoServiceDeploymentReturn =>  { # MyTypes::ServiceInformationResponse
     ReturnCode =>  { value => $some_value },
     ReasonCode =>  $some_value, # integer
     ReasonString =>  $some_value, # string
     ServiceInfoList =>  { # MyTypes::ArrayOfServiceInformation
       item =>  { # MyTypes::ServiceInformation
         ServiceName =>  $some_value, # string
         ServiceStatus => $some_value, # ServiceStatus
         ReasonCode =>  $some_value, # integer
         ReasonCodeString =>  $some_value, # string
         StartTime =>  $some_value, # string
         UpTime =>  $some_value, # integer
       },
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

