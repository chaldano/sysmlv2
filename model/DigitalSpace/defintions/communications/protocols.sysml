
package 'communication-protocols' {
  private import ScalarValues::*; 
  private import 'foundations-identity'::*;

  item def Protocol specializes IdentifiedEntity { 
    attribute name: String; 
    attribute layer: String; }
}
