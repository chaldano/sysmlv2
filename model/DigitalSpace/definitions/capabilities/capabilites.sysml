package capabilities {
  private import ScalarValues::*; 
  private import 'foundations_identity'::*; 
  private import 'foundations_datetype'::*; 
  private import coreactions::*;


port def PAuthin {
    in input: IdentityInformation  ;
  }
port def PAuthout {
    out output: IdentityStatus  ;
  }

part def AuthenticationCapability specializes IdentifiedEntity {
    attribute description: String;
    port inAuth : PAuthin;
    port outAuth : PAuthout;

    part sense : CoreSense;
    part control : CoreControl;
    part execute : CoreExecute;

    bind inAuth.input = sense.inobserve;
    bind sense.outinfo = control.incur;
    bind control.outdec = outAuth.output;
   }
}