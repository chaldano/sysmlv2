
package foundations_identity {
  private import ScalarValues::*;
 
  item def Identifier {
    attribute value: String[1]; }
 
  item def IdentifiedEntity {
  id: Identifier; }
  }
