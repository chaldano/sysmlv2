package 'automation-actuation' {
  private import ScalarValues::*;
  private import 'foundations-identity'::*;
  private import 'system-functionalport'::*;

  part def Actuator specializes IdentifiedEntity {
    attribute actuatorType : String;
    attribute energyForm : String;
    part ports : FunctionalPort [*];
  }
}
