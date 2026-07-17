package memcapabilities {
  private import ScalarValues::*; 
  private import foundations_identity::*; 
  private import foundations_datetype::*; 
  private import coreactions::*;

port def PMemin {
    in input: IdentityInformation; 
    out ref link: IdentityInformation;
  }
port def PMemout {
    out output: IdentityStatus  ;
    in link: IdentityStatus;
  }

// flow def PartTOCore {
//   ref item input: IdentityForm;
// end cappart: AuthenticationCapability;
// end coreaction: CoreControl;
// }

part def MemoryCapability specializes IdentifiedEntity {
    attribute description: String;
    port pMemin : PMemin{
    }
    port pMemout : PMemout{
    }
    action actionworkflow : CoreDecision;


    // memory state sensing
    action checkstate : CoreSense;
    // memory execution actions
    action executeReserve : CoreExecute;
    action executeRelease : CoreExecute;
    action executeAssign :  CoreExecute;
    action executeIsolate : CoreExecute;
    
    first start then checkstate;
    //then start checkstate 
    //then checkstate [checkstate.outinfo == "available"] then executeReserve;
    // then checkstate [checkstate.outinfo == "reserved"] then executeAssign;
    // then checkstate [checkstate.outinfo == "assigned"] then executeIsolate;
    // then checkstate [checkstate.outinfo == "isolated"] then executeRelease;
    // then checkstate [checkstate.outinfo == "available"] then start;
    // //first checkstate  then executeReserve;
    // then checkstate [checkstate.outinfo == "reserved"] then executeAssign;
    // then checkstate [checkstate.outinfo == "assigned"] then executeIsolate;
    // then checkstate [checkstate.outinfo == "isolated"] then executeRelease;
    // then checkstate [checkstate.outinfo == "available"] then start;
    // // flow from inAuth.link to control.incur ;
    // flow from control.outdec to outAuth.link ;
   }

}