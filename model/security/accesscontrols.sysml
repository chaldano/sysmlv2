package securitycontrols {
  private import ScalarFunctions::*;
  private import foundations_datetype::*; 
  private import idcapabilities::*;
  private import authcapabilities::*;


part authcap: AuthenticationCapability;
part idcap: IdentityCapability;        

item request: IdentityForm;


part def GUI{
  port  outGUI {
    out response: IdentityForm;
  }
}

interface def IdtoAuth {
end pidout: PIDout;
end pauthin: PAuthin;
}

interface identitycontrol: IdtoAuth {
 connect idcap.outID to authcap.inAuth;
}



}