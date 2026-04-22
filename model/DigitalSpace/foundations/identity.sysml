
package 'foundations-identity'{
  private import ScalarValues::*;
 
  item def Identifier {
    attribute value: String[1]; }
  item def IdentifiedEntity {
    attribute id: Identifier; }
  }
