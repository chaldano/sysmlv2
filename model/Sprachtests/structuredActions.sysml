package structuredActions {

private import ScalarFunctions::*;

action def MAction {
    in input: String;
    out output : String;  
   }

item def Eigangsstoff;
item def Ausgangsstoff;
item def Zwischenstoff;

action def SAction {
    in input: String;
    out output : String;  
   }

action master: MAction {
        in minput redefines input:Eigangsstoff;
        out moutput redefines output:Ausgangsstoff;

  bind minput = sub1.sinput;
  bind sub2.soutput = moutput;

  
    action sub1: SAction {
        in sinput redefines input:String;
        out soutput redefines output:Zwischenstoff;
    }
    action sub2: SAction {
        in sinput redefines input:Zwischenstoff;
        out soutput redefines output:Ausgangsstoff;
    }
 
  flow from sub1.soutput to sub2.sinput;
  }
}