
package 'communication_port' {
  private import ScalarValues::*; 
  private import 'foundations_identity'::*; 
  private import 'coupling'::*;
  private import foundations_datetype::*;

  item def NodePort specializes CouplingPort { 
    attribute address: String; 
    attribute role: String; }

  port def PNodeInput {
     in item indata : DataFlow; // Input data flow to the compute node}
    }
    port def PNodeOutput {
     out item outdata : DataFlow; // Output data flow from the compute node
    }   
    port def PNodeOutInput {
     inout item data : DataFlow; // Output data flow from the compute node
    }
}
