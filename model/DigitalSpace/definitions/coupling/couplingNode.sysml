
package coupling {
  private import ScalarValues::*; 
  private import structuralUnits::*;
  private import foundations_identity::*; 
  //private import organization_definitions::*;

abstract port def CouplingPort;

part def CouplingNode specializes IdentifiedEntity {
    part firmware : FirmwareUnit; // Firmware unit of the coupling node
    part nics : NetworkController[*]; // Network controller unit of the coupling node
    }
}


