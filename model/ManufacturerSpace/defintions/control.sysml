
package 'automation-control' {
  private import ScalarValues::*; 
  private import 'foundations-identity'::*; 
  private import 'system-functionalport'::*;
  
  part def Controller specializes IdentifiedEntity { 
    attribute controllerType: String; 
    attribute cycleTimeMs: Real; 
    part ports: FunctionalPort[*]; }
}
