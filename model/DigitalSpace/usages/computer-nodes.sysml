package 'usage-nodes'{
  private import ScalarValues::*; 
  private import 'structure-nodes'::*; 
  private import 'definitions-os'::*; 
  
 part mySystem {
   part ComputeNode: Node {
     os.family = "Linux";
     os.name = "test" ;
   }
 }
} 