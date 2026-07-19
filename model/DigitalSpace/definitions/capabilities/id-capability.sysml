package idcapabilities {
  private import ScalarValues::*; 
  private import foundations_identity::*; 
  private import foundations_datetype::*; 
  private import coreactions::*;

// Input for sense
item def IdentityForm:> observedObject;
item def IdentityInformation:> observedInformation;

port def PIDin ;
port def PIDout ;

part def IdentityCapability specializes IdentifiedEntity {
    attribute description: String;
    port input : PIDin;
    port output : PIDout;

    action senseID : CoreSense{
      in redefines input:IdentityForm;
      out redefines output: IdentityInformation; 
      }
    //part control : CoreControl;
    //part execute : CoreExecute;

bind input = senseID.input;
    bind senseID.output = output;
   }

}