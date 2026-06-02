
package 'communication_port' {
  private import ScalarValues::*; 
  private import 'foundations_identity'::*; 
  private import 'communication_endpoint'::*;
  
  item def NodePort specializes CouplingEndpoint { 
    attribute address: String; 
    attribute role: String; }
}
