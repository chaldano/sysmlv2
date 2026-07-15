package authcapabilities {
  private import ScalarValues::*; 
  private import foundations_identity::*; 
  private import foundations_datetype::*; 
  private import coreactions::*;

port def PAuthin {
    in input: IdentityInformation; 
    out ref link: IdentityInformation;
  }
port def PAuthout {
    out output: IdentityStatus  ;
    in link: IdentityStatus;
  }

flow def PartTOCore {
  ref item input: IdentityForm;
end cappart: AuthenticationCapability;
end coreaction: CoreControl;
}

part def AuthenticationCapability specializes IdentifiedEntity {
    attribute description: String;
    port inAuth : PAuthin{
      //out identity: IdentityInformation;
      //in bindings: IdentityBindings;
      //out identitytransfer: IdentityInformation;
    }
    port outAuth : PAuthout{
      //in authdecisiontransfer: IdentityStatus;
      //in authdecision: IdentityStatus;
    }
    //part sense : CoreSense;
    action control : CoreControl;
    //part execute : CoreExecute;

    //bind inAuth.identity = control.incur;
    //bind inAuth.bindings = control.intar;
    //bind control.outdec = outAuth.authdecision;

    flow from inAuth.link to control.incur ;
    flow from control.outdec to outAuth.link ;


   }

}