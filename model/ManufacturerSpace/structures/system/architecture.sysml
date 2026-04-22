package 'system-architecture' {
  private import StandardLibrary::*;
  import compute::*;
  import automation::*;
  import communication::*;
  import organization::*;
  import ai::*;
  import security::*;
  import dependability::*;

  part def System {
    part computeNodes: compute::structure::ComputeNode[*];
    part robots: automation::robotics::Robot[*];
    part processes: organization::processes::BusinessProcess[*];
    part comm: communication::definitions::Communication[*];
  }
}
