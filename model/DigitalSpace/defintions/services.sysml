
package services{
  private import ScalarValues::*; 
  private import foundations::identity::*; 
  private import communication::protocols::*;
  
  interface def ServiceInterface { 
    attribute endpoint: String; }
  
  part def Service specializes IdentifiedEntity { 
    attribute name: String; 
    part api: ServiceInterface; 
      attribute protocol: Protocol; 
      attribute port: Integer; }
}