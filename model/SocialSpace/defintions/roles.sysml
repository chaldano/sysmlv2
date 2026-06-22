package roles {
private import ScalarFunctions::*;
private import organization_definitions::*;

  part def RoleAssignment {
    part role: Role;
    part holder: Person[*];
  }
}
