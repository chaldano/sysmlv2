package organization::roles {
  import StandardLibrary::*;
  import organization::definitions::*;

  part def RoleAssignment {
    part role: Role;
    part holder: Person[*];
  }
}
