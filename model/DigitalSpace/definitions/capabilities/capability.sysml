package capabilities;
  private import ScalarValues::*; 
  private import 'foundations_identity'::*; 
  private import 'organization-definitions'::*;
  private import 'coupling'::*;
  abstract action def Function;

  abstract part def Capability specializes IdentifiedEntity {
    attribute description: String;
    ref behavior: Function;
    port access;
  }

  part def PhysicalCapability specializes Capability {
  attribute physicalInterface: String; // Description of the physical interface
  port physicalPort: CouplingPort; // Port for coupling with other nodes or components
  }

  part def NetworkCapability specializes Capability {
  attribute networkInterface: String; // Description of the network interface
  port networkPort: CouplingPort; // Port for coupling with other nodes or components
  }

  part def ServiceCapability specializes Capability {
  attribute serviceInterface: String; // Description of the network interface
  port servicePort: CouplingPort; // Port for coupling with other nodes or components
  }

  part def ApplicationCapability specializes Capability {
  attribute applicationInterface: String; // Description of the network interface
  port applicationPort: CouplingPort; // Port for coupling with other nodes or components
  }