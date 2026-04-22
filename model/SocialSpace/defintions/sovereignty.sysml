package organization::sovereignty {
  import StandardLibrary::*;

  item def Sovereignty;

  item def SovereignEntity {
    attribute name: String;
  }

  trace SovereignEntity -> Sovereignty;
}
