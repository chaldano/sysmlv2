
package 'communication_port' {
  private import ScalarValues::*; 
  private import 'foundations_identity'::*; 
  private import 'coupling'::*;
  
  item def NodePort specializes CouplingPort { 
    attribute address: String; 
    attribute role: String; }
}
