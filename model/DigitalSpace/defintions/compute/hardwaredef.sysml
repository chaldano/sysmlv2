
package 'definitions-hardware' {
  private import ScalarValues::*; 
  private import 'foundations-unit'::*;
  private import MeasurementReferences::*;
  private import 'foundations-identity'::*;
  private import 'definitions-firmware'::*;
  

  item def CPU { 
    attribute cores: Integer; 
    attribute frequencyGHz: Real; }

  item def Memory {
    attribute sizeGB: Integer; 
    }
  item def IO {
    attribute type:String;
    attribute bandwidth: MbytePerSecond;
  }
  item def Storage { 
    attribute capacity: Gbyte;   
    attribute type: String; 
    }
  item def NetworkInterface { 
    attribute name: String; 
    attribute macAddress: String; 
    attribute speedMbps: Integer; }

  part def Hardware {
    attribute manufacturer:String;
    part cpu: CPU;
    part mem: Memory;
    part st: Storage;
    part io: IO;  
    part net: NetworkInterface;
    part fw: Firmware;
    }
  }