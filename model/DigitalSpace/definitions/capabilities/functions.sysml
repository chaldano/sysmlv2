package FunctionModel {
    private import ScalarValues::*; 
    private import 'foundations_identity'::*; 
    private import 'foundations_datetype'::*; 

abstract part def Function{
  in input : DataFlow[0..*]; // Input data flow to the function
  out result : DataFlow[1]; // Output data flow from the function  
 }


part def ComputeFunction specializes Function {
port InputPort: DataFlow;
  }

}
