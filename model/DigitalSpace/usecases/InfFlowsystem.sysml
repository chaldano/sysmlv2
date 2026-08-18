package behaviorSystem2 {

    item def rawinfo ;
    item def verifiedinfo ;
    item def transformedinfo; 
    item def qualifiedinfo; 
    
    part def PEngine{
        port inputPort;
        port outputPort;
        }

    action def Inputvalidation;
    action def Transformation;
    action def Qualification;
    action def Pipeline;


    part ProcessEngine: PEngine{
        
         action ivaction: Inputvalidation{
           in input:rawinfo;
           out output: verifiedinfo;
           }
         action traction: Transformation {
           in input: verifiedinfo;
           out output: transformedinfo;
           } 
         action qsaction: Qualification {
           in input:transformedinfo;
           out output: qualifiedinfo;
          }
       flow from ProcessEngine.inputPort to ivaction.input;
      flow from ivaction.output to traction.input;
      flow from traction.output to qsaction.input;
      flow from qsaction.output to ProcessEngine.outputPort;
     }
    }