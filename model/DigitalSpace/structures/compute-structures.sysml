package 'structure-nodes' {
    private import ScalarValues::*; 
    private import 'definitions-hardware'::*; 
    private import 'definitions-firmware'::*; 
   private import  'definitions-os'::*; 
   private import 'foundations-identity'::*;
 
 part def Node specializes IdentifiedEntity {
   item def maufacturer{
     attribute value: String[25];}
   part cpu: CPU; 
   part firmware: Firmware;
   part memory: Memory; 
   part os: OperatingSystem;
   part storage: Storage[*]; 
   part nics: PhysicalNetworkInterface[*];
 }
}