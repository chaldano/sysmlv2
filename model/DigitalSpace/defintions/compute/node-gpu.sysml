
//* package 'compute::node' {
  private import ScalarValues::*; 
  private import foundations::identity::*; 
  
  item def GPU { attribute vendor: String; 
    attribute model: String; 
    attribute memoryGB: Integer; }
    
  part def GPUNode specializes ComputeNode 
  { part gpus: GPU[*]; }
} */
