
package 'communication-port' {
  private import ScalarValues::*; 
  private import 'foundations-identity'::*; 
  private import 'communication-endpoint'::*;
  
  item def NodePort specializes CouplingEndpoint { 
    attribute address: String; 
    attribute role: String; }
}
