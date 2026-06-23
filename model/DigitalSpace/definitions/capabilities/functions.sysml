package FunctionModel {
    private import ScalarValues::*; 
    private import 'foundations_identity'::*; 
    private import 'foundations_datetype'::*; 


abstract action def Function{
  in fparameter : DataFlow[0..*]; // Input data flow to the function
  out fresult   : DataFlow[1]; // Output data flow from the function  
 }

action def ComputeFunction specializes Function; 
action def SystemFunction specializes Function; 

}
