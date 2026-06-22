package Usage_Nodes {
  private import foundations_datetype::*;
  private import ScalarValues::*;
  private import computeNodes::*;
  private import structuralUnits::*;
  private
  
 part server : ComputeNode {
    currenttype = nodeType::physical;
    snic:NetworkController;
    type="Ethernet";

  }

}