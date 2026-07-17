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



abstract action def CoreAction {
    attribute description: String;
    in input : Base::DataValue; // Input data flow to the function
    in input2 : Base::DataValue; // Input data flow to the function
    out output : Base::DataValue[0..*]; // Output data flow from the function  
  }

// core actions of a capability, representing the fundamental operations that can be performed on data and information within the digital space
 action def CoreSense:>CoreAction {
  // Examples are sensoring, auditing, logging, reading an identity or policy or certificat
    in item redefines input : observedObject[0..*];
    // out outinfo : observedInformation[0..1]; // Output data flow from the function  
    out item redefines output : Natural; // Output data flow from the function  

  }
 
 action def CoreTransform:>CoreAction {
  // Examples are transformation, encoding, hashing, signature creation, 
  // compression, reasoning
    in item redefines input : sourceInformation[0..*];
   // Input data flow to the function
    out item redefines output : transformedInformation[0..1]; // Output data flow from the function  
  }

 action def CoreControl:>CoreAction {
  // examples are authorization, integrity verification, compliance check, 
  // plausibility check, availability check, binding check, 
    in redefines input : targetObject[0..*];  
    in redefines input2 : currentObject  [0..*];
  
   // Input data flow to the function
    out redefines output : controlDecision; // Output data flow from the function  
  }

 action def CoreExecute:>CoreAction {
  // examples are execution of a command, execution of a function,
    in item redefines input : activitySpecification;
   // Input data flow to the function
    out item redefines output : effectObject; // Output data flow from the function  
  }

action def CoreAdapt:>CoreAction {
  //examples are adaptation, reconfiguration, self-healing, self-optimization
    in item redefines input : currentStructure;
   // Input data flow to the function
    in item redefines input2 : targetStructure;
   // Input data flow to the function
    out item redefines output : adaptedStructure; // Output data flow from the function  
  }

// core actions of a capability, representing the fundamental operations that can be performed on data and information within the digital space
 action def CoreDecision:>CoreAction {
  // Examples are sensoring, auditing, logging, reading an identity or policy or certificat
    in item redefines input : SystemState;
    out item redefines output : CoreAction[0..*]; // Output data flow from the function  
  }

// End of coreaction definitions
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