package Usage_Nodes {
  private import ScalarValues::*;
  private import SpecificComputeNode::*;
 
 // Usage of the specific compute node N1 in a digital space context
    // This usage defines how the specific compute node N1 is utilized within a digital space, including its interactions with other components and any specific configurations or operations relevant to this cont
    part computeNodeN1 : N1 {
      nodeName1 = "Compute Node N1 Usage"; // Example of setting a specific node name for this usage of N1
    }
    // Using the specific compute node N2
    part computeNodeN2 : N1 {
      nodeName :>> nodeName = "Compute N2 Usage"; // Example of reusing the N1 part with a different node name for this specific usage
    }


      // Additional usage-specific attributes or operations can be defined here

part def motorUsage {
    attribute usageDescription : String = "Usage of Motor in Digital Space";
    part motor1 : Motor { 
        power :>> power = "150W"; // Example of reusing the Motor part with a different power attribute for this specific usage     
    }
 }
}