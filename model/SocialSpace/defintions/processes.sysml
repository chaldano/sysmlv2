package organization::processes {
  import StandardLibrary::*;

  item def BusinessProcess {
    attribute id: String;
    attribute name: String;
    attribute purpose: String;
  }

  item def ProcessStep {
    attribute name: String;
    attribute description: String;
    attribute order: Integer;
  }
}
