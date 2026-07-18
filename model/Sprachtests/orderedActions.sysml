package orderedActions {

private import ScalarFunctions::* ;

part def partex;
part def parti1;
part def parti2;
part def parti3;

action def MAction {
    in input: String;
    out output : String;  
   }

action def SAction {
    in input: String;
    out output : String;  
   }
item def Eigangsstoff;
item def Ausgangsstoff;
item def Zwischenstoff;

// Definiton of nested actions with guard conditions and ordered execution
    action sub1: SAction; 
    action sub2: SAction ;
    action sub3: SAction ;
    action sub4: SAction;           

action master: MAction {
  first start;
  then fork f1;
then sub1;
  then sub2;
  action sub1;
   then j1;
  action sub2;
   then j1;
  join j1;
first j1 then done;
  }
}