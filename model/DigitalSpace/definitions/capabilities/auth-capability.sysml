package authcapabilities {
  private import ScalarValues::*; 
  private import foundations_identity::*; 
  private import foundations_datetype::*; 
  private import coreactions::*;


// Input for control

item def IdentityPair {
    attribute identity: String; // Type of identity information (e.g., username, email, biometric data)
    attribute identityPerson: String; // Value of the identity information
    }
item def IdentityBindings:>targetObject{
  ref item IdentityPair[1..*];
 }
item def IdentityInformation:>currentObject;

item def IdentityStatus:> controlDecision{
  attribute statusType: String; // Type of identity status (e.g., active, inactive, suspended)
  attribute statusValue: String; // Value of the identity status
}

port def PAuthin ;
port def PAuthout ;
  

part def AuthenticationCapability specializes IdentifiedEntity {
    attribute description: String;
    port input: PAuthin;
    port output : PAuthout;

    //part control : CoreControl;
    action controlAuth : CoreControl{
    in redefines input: IdentityInformation;
    in redefines input2: IdentityBindings;
    out redefines output: IdentityStatus; 
    //part execute : CoreExecute;
    }

    bind input = controlAuth.input;
    bind input = controlAuth.input2;    
    bind controlAuth.output = output;
    
    //flow from inAuth.link to control.input ;
    //flow from control.output to outAuth.link ;


   }

}