package security::controls {
  import StandardLibrary::*;
  import security::definitions::*;

  item def SecurityPolicy;
  item def SecurityControl;

  trace SecurityControl -> SecurityPolicy;
}
