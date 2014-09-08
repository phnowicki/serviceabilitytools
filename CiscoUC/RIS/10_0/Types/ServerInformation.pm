package CiscoUC::RIS::10_0::Types::ServerInformation;
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

my %HostName_of :ATTR(:get<HostName>);
my %os_name_of :ATTR(:get<os_name>);
my %os_version_of :ATTR(:get<os_version>);
my %os_arch_of :ATTR(:get<os_arch>);
my %java_runtime_version_of :ATTR(:get<java_runtime_version>);
my %java_vm_vendor_of :ATTR(:get<java_vm_vendor>);
my %call_manager_version_of :ATTR(:get<call_manager_version>);
my %Active_Versions_of :ATTR(:get<Active_Versions>);
my %In_Active_Versions_of :ATTR(:get<In_Active_Versions>);

__PACKAGE__->_factory(
    [ qw(        HostName
        os_name
        os_version
        os_arch
        java_runtime_version
        java_vm_vendor
        call_manager_version
        Active_Versions
        In_Active_Versions

    ) ],
    {
        'HostName' => \%HostName_of,
        'os_name' => \%os_name_of,
        'os_version' => \%os_version_of,
        'os_arch' => \%os_arch_of,
        'java_runtime_version' => \%java_runtime_version_of,
        'java_vm_vendor' => \%java_vm_vendor_of,
        'call_manager_version' => \%call_manager_version_of,
        'Active_Versions' => \%Active_Versions_of,
        'In_Active_Versions' => \%In_Active_Versions_of,
    },
    {
        'HostName' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'os_name' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'os_version' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'os_arch' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'java_runtime_version' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'java_vm_vendor' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'call_manager_version' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'Active_Versions' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'In_Active_Versions' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
    },
    {

        'HostName' => 'HostName',
        'os_name' => 'os-name',
        'os_version' => 'os-version',
        'os_arch' => 'os-arch',
        'java_runtime_version' => 'java-runtime-version',
        'java_vm_vendor' => 'java-vm-vendor',
        'call_manager_version' => 'call-manager-version',
        'Active_Versions' => 'Active_Versions',
        'In_Active_Versions' => 'In_Active_Versions',
    }
);

} # end BLOCK







1;


=pod

=head1 NAME

CiscoUC::RIS::10_0::Types::ServerInformation

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
ServerInformation from the namespace http://schemas.cisco.com/ast/soap.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * HostName


=item * os_name

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 os-name


=item * os_version

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 os-version


=item * os_arch

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 os-arch


=item * java_runtime_version

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 java-runtime-version


=item * java_vm_vendor

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 java-vm-vendor


=item * call_manager_version

Note: The name of this property has been altered, because it didn't match
perl's notion of variable/subroutine names. The altered name is used in
perl code only, XML output uses the original name:

 call-manager-version


=item * Active_Versions


=item * In_Active_Versions




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # CiscoUC::RIS::10_0::Types::ServerInformation
   HostName =>  $some_value, # string
   os_name =>  $some_value, # string
   os_version =>  $some_value, # string
   os_arch =>  $some_value, # string
   java_runtime_version =>  $some_value, # string
   java_vm_vendor =>  $some_value, # string
   call_manager_version =>  $some_value, # string
   Active_Versions =>  $some_value, # string
   In_Active_Versions =>  $some_value, # string
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

