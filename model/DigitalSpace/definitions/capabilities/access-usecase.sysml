package accesscontrol {
  private import ScalarValues::*; 
  private import foundations_identity::*; 
  private import foundations_datetype::*; 
  private import authcapabilities::*;
  private import idcapabilities::*;


 idcontrol: IdentityCapability;
 authcontrol: AuthenticationCapability;

flow def IdTOAth {
ref item input: IdentityInformation;
end cappartID: IdentityCapability;
end cappartAuth: AuthenticationCapability;
}
flow from idcontrol.output to authcontrol.input;


}