package guardedActions {

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
item def Status;

status: Status{
    in inpute: String;
    out output: Integer;
}

// Definiton of nested actions with guard conditions and ordered execution
    action sammel: SAction; 
    
    action sub1: SAction; 
    action sub2: SAction ;
    action sub3: SAction ;
    action sub4: SAction;           

action master: MAction {

  first start;
  decide d1;
  action sammel;
  action status1;
  action status2; 

  first start then sammel;
    first sammel then d1;
    first d1 if status.output > 10 then sub1;
    first d1 if status.output < 10 then sub2;
   action sub1;
   then m1;
  action sub2;
   then m1;
  merge m1;
first m1 then done;
  }
}