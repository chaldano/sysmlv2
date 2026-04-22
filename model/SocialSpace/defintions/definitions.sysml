package 'organization-definitions' {
  private import ScalarValues::*; 
  item def Person {
    attribute name: String;
    attribute email: String;
  }

  item def Role {
    attribute name: String;
    attribute description: String;
  }
  item def OrganizationUnit {
    attribute name: String;
    attribute description: String;
  }
}
