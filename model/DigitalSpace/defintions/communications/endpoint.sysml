
package 'communication-endpoint' {
  private import ScalarValues::*; 
  private import 'foundations-identity'::*; 
  private import 'organization-definitions'::*;
  
  part def CouplingEndpoint specializes IdentifiedEntity { 
    attribute name: String; }
  
  item def HumanEndpoint specializes CouplingEndpoint { 
    attribute tsubject: Person; 
    attribute modality: String; 
    attribute roleHint: String; }
}
