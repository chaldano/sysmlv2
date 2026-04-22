
package 'definitions-firmware' {
  private import ScalarValues::*;
  private import 'foundations-identity'::*;
  private import 'foundations-datetype'::*;

  item def Firmware specializes IdentifiedEntity { 
    attribute vendor: String; 
    attribute version: String; 
    attribute releaseDate: Date; 
    }
}