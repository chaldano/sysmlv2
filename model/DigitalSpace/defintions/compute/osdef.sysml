
package 'definitions-os' {
  private import ScalarValues::*; 
 // import StandardLibrary::*; 
  private import 'foundations-identity'::*;
  item def OSFamily; 
  item def Linux specializes OSFamily; 
  item def Windows specializes OSFamily; 
  item def RTOS specializes OSFamily;
  
  item def OperatingSystem specializes IdentifiedEntity { 
    attribute name: String; 
    attribute version: String; 
    attribute family: OSFamily; }
  }