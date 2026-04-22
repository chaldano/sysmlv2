package dependability::integration {
  import StandardLibrary::*;
  import dependability::definitions::*;
  import organization::*;
  import organization::trust::*;
  import compute::*;
  import automation::*;
  import communication::*;
  import ai::*;
  import security::*;
  import system::*;

  // Social dependability
  trace Dependability -> organization::processes::BusinessProcess;
  trace Trust -> Reliability;

  // Digital dependability
  trace Reliability -> compute::structure::ComputeNode;
  trace Availability -> compute::definitions::OperatingSystem;

  // Automation dependability
  trace Safety -> automation::robotics::Robot;
  trace Resilience -> automation::control::Controller;

  // Communication dependability
  trace Integrity -> communication::digital::Protocol;

  // AI dependability
  trace Robustness -> ai::definitions::AIModel; // Robustness alias via Resilience not defined; use Resilience if needed

  // Security ↔ Dependability
  trace dependability::definitions::Security -> security::definitions::Security;

  // System-level linkage
  trace Dependability -> system::architecture::System;
}
