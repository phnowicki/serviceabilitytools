
package CiscoUC::RIS::10_5::Elements::selectCtiItem;
use strict;
use warnings;

{ # BLOCK to scope variables

sub get_xmlns { 'http://schemas.cisco.com/ast/soap' }

__PACKAGE__->__set_name('selectCtiItem');
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

my %StateInfo_of :ATTR(:get<StateInfo>);
my %CtiSelectionCriteria_of :ATTR(:get<CtiSelectionCriteria>);

__PACKAGE__->_factory(
    [ qw(        StateInfo
        CtiSelectionCriteria

    ) ],
    {
        'StateInfo' => \%StateInfo_of,
        'CtiSelectionCriteria' => \%CtiSelectionCriteria_of,
    },
    {
        'StateInfo' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'CtiSelectionCriteria' => 'CiscoUC::RIS::10_5::Types::CtiSelectionCriteria',
    },
    {

        'StateInfo' => 'StateInfo',
        'CtiSelectionCriteria' => 'CtiSelectionCriteria',
    }
);

} # end BLOCK






} # end of BLOCK



1;


=pod

=head1 NAME

CiscoUC::RIS::10_5::Elements::selectCtiItem

=head1 DESCRIPTION

Perl data type class for the XML Schema defined element
selectCtiItem from the namespace http://schemas.cisco.com/ast/soap.







=head1 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * StateInfo

 $element->set_StateInfo($data);
 $element->get_StateInfo();




=item * CtiSelectionCriteria

 $element->set_CtiSelectionCriteria($data);
 $element->get_CtiSelectionCriteria();





=back


=head1 METHODS

=head2 new

 my $element = CiscoUC::RIS::10_5::Elements::selectCtiItem->new($data);

Constructor. The following data structure may be passed to new():

 {
   StateInfo =>  $some_value, # string
   CtiSelectionCriteria =>  { # CiscoUC::RIS::10_5::Types::CtiSelectionCriteria
     MaxReturnedItems =>  $some_value, # unsignedInt
     CtiMgrClass => $some_value, # CtiMgrClass
     Status => $some_value, # CtiStatus
     NodeName =>  $some_value, # string
     SelectAppBy => $some_value, # CtiSelectAppBy
     AppItems =>  { # CiscoUC::RIS::10_5::Types::ArrayOfSelectAppItem
       SelectAppItem =>  { # CiscoUC::RIS::10_5::Types::SelectAppItem
         AppItem =>  $some_value, # string
       },
     },
     DevNames =>  { # CiscoUC::RIS::10_5::Types::ArrayOfSelectDevName
       SelectDevName =>  { # CiscoUC::RIS::10_5::Types::SelectDevName
         DevName =>  $some_value, # string
       },
     },
     DirNumbers =>  { # CiscoUC::RIS::10_5::Types::ArrayOfSelectDirNumber
       item =>  { # CiscoUC::RIS::10_5::Types::SelectDirNumber
         DirNumber =>  $some_value, # string
       },
     },
   },
 },

=head1 AUTHOR

Generated by SOAP::WSDL

=cut

