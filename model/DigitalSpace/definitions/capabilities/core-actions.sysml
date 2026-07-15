package coreactions {
  private import ScalarValues::*; 
  private import foundations_identity::*; 
  private import foundations_datetype::*; 
  private import FunctionModel::*;
 
  port def Cinput {
    in input: DataFlow[1..*]  ;
  }
  port def Coutput {
    out output: DataFlow[1]  ;
  }
// core actions of a capability, representing the fundamental operations that can be performed on data and information within the digital space
 action def CoreSense {
  // Examples are sensoring, auditing, logging, reading an identity or policy or certificat
    in inobserve : observedObject[0..*];
   // Input data flow to the function
    out outinfo : observedInformation[0..1]; // Output data flow from the function  
  }
 
 action def CoreTransform {
  // Examples are transformation, encoding, hashing, signature creation, 
  // compression, reasoning
    in intrans : sourceInformation[0..*];
   // Input data flow to the function
    out outtrans : transformedInformation[0..1]; // Output data flow from the function  
  }

 action def CoreControl {
  // examples are authorization, integrity verification, compliance check, 
  // plausibility check, availability check, binding check, 
    in intar : targetObject[0..*];
    in incur : currentObject[0..*];
  
   // Input data flow to the function
    out outdec : controlDecision; // Output data flow from the function  
  }

 action def CoreExecute {
  // examples are execution of a command, execution of a function,
    in inexspec : activitySpecification;
   // Input data flow to the function
    out outexobj : effectObject; // Output data flow from the function  
  }

action def CoreAdapt {
  //examples are adaptation, reconfiguration, self-healing, self-optimization
    in inputC : currentStructure;
   // Input data flow to the function
    in inputT : targetStructure;
   // Input data flow to the function
    out output : adaptedStructure; // Output data flow from the function  
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