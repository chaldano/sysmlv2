
package 'definitions-hardware' {
  private import ScalarValues::*; 
  private import 'foundations-unit'::*;
  private import MeasurementReferences::*;
  private import 'foundations-identity'::*;
  
  item def CPU { 
    attribute cores: Integer; 
    attribute frequencyGHz: Real; }
  item def Memory {
    attribute sizeGB: Integer; }
  item IoInterface{
    attribute type:String;
    attribute bandwidth: MbytePerSecond;
  }
  item def Storage { 
    attribute capacity: Gbyte;   
    attribute type: String; 
    }
  item def PhysicalNetworkInterface { 
    attribute name: String; 
    attribute macAddress: String; 
    attribute speedMbps: Integer; }
}