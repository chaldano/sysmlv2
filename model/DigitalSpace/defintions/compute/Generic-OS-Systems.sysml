
package 'Generic-OS-Systems' {
  private import ScalarValues::*; 
  private import 'foundations_identity'::*;
 
  item def OSFamily; 
  item def Linux specializes OSFamily; 
  item def Windows specializes OSFamily; 
  item def RTOS specializes OSFamily;
  
  abstract item def OS_System specializes IdentifiedEntity { 
    attribute name: String; 
    attribute version: String; 
    attribute family: OSFamily; }
  }