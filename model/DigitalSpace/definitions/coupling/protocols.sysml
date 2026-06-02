
package 'communication_protocols' {
  private import ScalarValues::*; 
  private import 'foundations_identity'::*;

  item def Protocol specializes IdentifiedEntity { 
    attribute name: String; 
    attribute layer: String; }
}
