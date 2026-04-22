package system::doubleloop {
  import StandardLibrary::*;
  import system::architecture::*;
  import organization::*;
  import ai::*;
  import security::*;

  // Outer loop: Governance
  part def GovernanceLoop {
    part evaluator: ai::definitions::AIModel;
    part policy: organization::compliance::Regulation[*];
  }

  // Inner loop: Operation
  part def OperationLoop {
    part system: system::architecture::System;
    part security: security::definitions::Security;
  }
}
