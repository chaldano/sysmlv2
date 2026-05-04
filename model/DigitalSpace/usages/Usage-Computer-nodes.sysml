package Usage-Nodes{
  private import ScalarValues::*; 
  
 part mySystem {
   part ComputeNode: Node {
     os.family = "Linux";
     os.name = "test" ;
   }
 }
} 