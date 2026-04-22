package ai::integration {
  import StandardLibrary::*;
  import ai::definitions::*;
  import compute::*;
  import automation::*;
  import organization::*;

  trace AIModel -> organization::processes::BusinessProcess;
  trace AIModel -> automation::control::Controller;
  trace Predictor -> compute::structure::ComputeNode;
}
