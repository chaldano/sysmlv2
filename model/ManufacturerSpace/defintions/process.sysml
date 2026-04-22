
package automation::process {
  import ScalarValues::*; import StandardLibrary::*; import foundation::identity::*; import system::functionalport::*;
  part def ProcessUnit specializes IdentifiedEntity { attribute name: String; attribute domain: String; part ports: FunctionalPort[*]; }
}
