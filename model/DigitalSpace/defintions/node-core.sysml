
package compute::node {
  private import ScalarValues::*; 
  //import StandardLibrary::*; 
  private import foundations::identity::*;
  private import hardware::*; 
  private import firmware::*; 
  private import os::*; 
  private import compute::services::*; 
  private import communication::port::*;
  
  item def GPU { 
    attribute vendor: String; 
    attribute model: String; 
    attribute memoryGB: Integer; 
    }
    
  part def GPUNode specializes ComputeNode 
  { part gpus: GPU[*]; }

  part def ComputeNode specializes foundations::identity::IdentifiedEntity {
    part hw: Hardware; 
      attribute nature: NodeNature; 
      attribute firmware: Firmware; 
      attribute os: OperatingSystem; 
  
    part services: Service[*];
      attribute nodeId: String[1]; 
    part ports: NodePort[*];
  }
}