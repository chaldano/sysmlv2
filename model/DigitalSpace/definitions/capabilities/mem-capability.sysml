package memcapabilities {
  private import ScalarValues::*; 
  private import foundations_identity::*; 
  private import foundations_datetype::*; 
  private import coreactions::*;

// Input for sense
item def memoryInformation:> observedObject;
item def memoryState:> observedInformation;

port def PMemin {
  }
port def PMemout {
  }

part def MemoryCapability specializes IdentifiedEntity {
    attribute description: String;
    port input : PMemin;
    port output : PMemout;

    // memory state sensing
    action checkstate : CoreSense{
      in redefines input: memoryState;
      out redefines output : String;
    }
    // memory execution actions
    action executeReserve : CoreExecute;
    action executeRelease : CoreExecute;
    action executeAssign :  CoreExecute;
    action executeIsolate : CoreExecute;

    action capworkflow : CoreDecision{
      in input : memoryInformation;
      //out link: memoryInformation;
      out output : memoryState;
    
    first start;
    decide dmemstat;
   // fork fmemproc;
   // join jmemproc;
    merge mmemstat;
    
    first start then checkstate;
    action checkstate;
    then dmemstat;
    first dmemstat if output == "1"  then executeReserve;
    first dmemstat if output == "2"  then executeAssign;
    first dmemstat if output == "3"  then executeIsolate;
    first dmemstat if output == "4"  then executeRelease;
    action executeReserve; then mmemstat;
    action executeAssign; then mmemstat;
    action executeIsolate; then mmemstat;
    action executeRelease; then mmemstat;
    first mmemstat then done;
    }

    bind input = capworkflow.input;
    bind capworkflow.output = output;

    //flow from MemoryCapability.link to checkstate.input ;
    // flow from control.outdec to outAuth.link ;
   }

}