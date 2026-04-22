
package 'compute-nature'{
  private import ScalarValues::*; 
  
  item def NodeNature; 
  item def PhysicalNode specializes NodeNature; 
  item def VirtualNode specializes NodeNature;
}