package organization::compliance {

  item def Regulation {
    attribute name: String;
    attribute source: String;
    attribute description: String;
  }

  item def ComplianceRequirement {
    attribute id: String;
    attribute text: String;
  }

  trace ComplianceRequirement -> Regulation;
}
