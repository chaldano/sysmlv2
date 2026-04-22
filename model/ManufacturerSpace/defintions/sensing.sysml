
package automation::sensing {
  import ScalarValues::*; import StandardLibrary::*; import foundation::identity::*; import system::functionalport::*;
  part def Sensor specializes IdentifiedEntity { attribute measurementType: String; part ports: FunctionalPort[*]; }
}
