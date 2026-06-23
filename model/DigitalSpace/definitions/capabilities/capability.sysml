package capabilities {
  private import ScalarValues::*; 
  private import 'foundations_identity'::*; 
  private import 'foundations_datetype'::*; 
  private import FunctionModel::*;
 
  port def Cinput {
    in input: DataFlow[1..*]  ;
  }
  port def Coutput {
    out output: DataFlow[1]  ;
  }

 abstract part def Capability specializes IdentifiedEntity {
    attribute description: String;
    in input : DataFlow[0..*]; // Input data flow to the function
    out output : DataFlow[1]; // Output data flow from the function  
  
    // internal functionality of the capability, represented as a behavior
    action functions : SystemFunction[1..*];
    
    //port output: DataFlow;
    constraint {
      output = functions.fresult;  
      }
    }
    
    part def ComputeCapability{
      part function : ComputeFunction;

      port inputs: DataFlow[1..*];
      port output: DataFlow[1];
      }
    
 }