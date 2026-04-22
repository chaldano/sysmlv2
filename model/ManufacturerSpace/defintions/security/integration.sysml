package security::integration {
  import StandardLibrary::*;
  import security::definitions::*;
  import compute::*;
  import communication::*;
  import automation::*;
  import organization::*;
  import ai::*;

  trace Security -> compute::structure::ComputeNode;
  trace Security -> communication::definitions::Communication;
  trace Security -> automation::robotics::Robot;
  trace Security -> ai::definitions::AIModel;
}
