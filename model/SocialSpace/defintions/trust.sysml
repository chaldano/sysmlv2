package organization::trust {
  import StandardLibrary::*;

  item def Trust {
    attribute description: String;
  }

  item def TrustRelation {
    attribute level: Real;
  }
}
