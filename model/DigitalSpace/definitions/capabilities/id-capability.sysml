package idcapabilities {
  private import ScalarValues::*; 
  private import foundations_identity::*; 
  private import foundations_datetype::*; 
  private import coreactions::*;

port def PIDin {
    in input: IdentityForm  ;
  }
port def PIDout {
    out output: IdentityInformation  ;
  }

part def IdentityCapability specializes IdentifiedEntity {
    attribute description: String;
    port inID : PIDin{
      in form: IdentityForm;
    }
    port outID : PIDout{
      out idinf: IdentityStatus;
    }
    part sense : CoreSense;
    //part control : CoreControl;
    //part execute : CoreExecute;

    bind inID.form = sense.inobserve;
    bind sense.outinfo = outID.idinf;
   }

}