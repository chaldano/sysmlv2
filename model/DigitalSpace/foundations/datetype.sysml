 package 'foundations_datetype' {
  private import ScalarValues::*;
  private import 'foundations_identity'::*;

    attribute def Date {
        attribute year  : Integer;
        attribute month : Integer;
        attribute day   : Integer;
    }
   enum def OSFamily { 
        Linux;
        Windows;
        RTOS ;
        }
   enum def nodeType {
        hard;
        virtual;
        physical;
        }

item def HTTPRequest {
    attribute method: String; // HTTP method (e.g., GET, POST, PUT, DELETE)
    attribute url: String; // URL of the HTTP request
    attribute headers: String; // HTTP headers as key-value pairs
    attribute body: String; // Body of the HTTP request (for POST/PUT requests)
  }
item def HTTPResponse {
    attribute statusCode: Integer; // HTTP status code (e.g., 200, 404, 500)
    attribute headers: String; // HTTP headers as key-value pairs
    attribute body: String; // Body of the HTTP response      
    }

  item def DataFlow {
    attribute dataType: String; // Type of data being transferred
    attribute size: Integer; // Size of the data being transferred (in bytes)
    }

  // sense
  item def observedObject:> IdentifiedEntity{
    attribute objectDescription: String; // Type of data being transferred
    }
  item def observedInformation:> IdentifiedEntity{
    attribute informationDescription: String; // Type of data being transferred
    }
  // transform
  item def sourceInformation:> IdentifiedEntity{
    attribute informationDescription: String; // Type of data being transferred
    }
  item def transformedInformation:> IdentifiedEntity{
    attribute informationDescription: String; // Type of data being transferred
    }
  // control
  item def deviationInformation:> IdentifiedEntity{
    attribute informationDescription: String; // Type of data being transferred
    }
  item def controlDecision:> IdentifiedEntity{
    attribute decisionDescription: String; // Type of data being transferred
    }
  item def targetObject:> IdentifiedEntity{
    attribute objectDescription: String; // Type of data being transferred
    }
  item def currentObject:> IdentifiedEntity{
    attribute objectDescription: String; // Type of data being transferred
    }

  //execute   
  item def activitySpecification:> IdentifiedEntity{
    attribute specificationDescription: String; // Type of data being transferred
    }
  item def effectObject:> IdentifiedEntity{
    attribute stateDescription: String; // Type of data being transferred
    }
  //adapt
  item def targetStructure:> IdentifiedEntity{
    attribute structureDescription: String; // Type of data being transferred
    }
  item def currentStructure:> IdentifiedEntity{
    attribute structureDescription: String; // Type of data being transferred
    }
  item def adaptedStructure:> IdentifiedEntity{
    attribute structureDescription: String; // Type of data being transferred
    }  
 
 // Datatypes for capabilities
 item def SystemState{
  attribute statevalue: String; // Fields of the identity form (e.g., username,}
  }

//  item def IdentityForm{
//   attribute name: String; // Type of identity form (e.g., login form, registration form)
//   attribute credential: String; // Fields of the identity form (e.g., username,
//  }
 
//  item def IdentityInformation {
//     attribute identityType: String; // Type of identity information (e.g., username, email, biometric data)
//     attribute identityValue: String; // Value of the identity information
//     }

 // Datatypes for capabilities
//  item def IdentityPair {
//     attribute identity: String; // Type of identity information (e.g., username, email, biometric data)
//     attribute identityPerson: String; // Value of the identity information
//     }

 
 
 
 }