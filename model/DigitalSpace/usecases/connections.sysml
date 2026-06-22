package Connection_UseCases {
  private import ScalarValues::*; 
  private import 'foundations_identity'::*; 
  private import structuralUnits::*;

  //* usecase "Create Connection" as UC1
  usecase "Delete Connection" as UC2
  usecase "Update Connection" as UC3
  usecase "View Connection Details" as UC4

  UC1 --> "Connection Management"
  UC2 --> "Connection Management"
  UC3 --> "Connection Management"
  UC4 --> "Connection Management" */

item def HTTPRequest {
  attribute method: String; // e.g., "GET", "POST", "PUT", "DELETE"
  attribute url: String;
  attribute headers: String; // Simplified representation of headers
  attribute body: String; // Simplified representation of the request body
}

item def HTTPResponse {
  attribute statusCode: Integer; // e.g., 200, 404, 500
  attribute headers: String; // Simplified representation of headers
  attribute body: String; // Simplified representation of the response body
}   


item def Order {    
  attribute orderId: String;
  attribute description: String;
}

item def Confirmation {    
    attribute confirmationId: String;
    attribute status: String; // e.g., "Success", "Failure"         
}

enum def modultype {
  enum server;
  enum client;
}

//Functional behavior for creating an order, which can be associated with a capability or service in the digital space
action def CreateOrder {
    in item orderDetails: Order;
    out item orderConfirmation: Confirmation;   
  // Define the behavior for creating an order
}

part def ModulLink {
    attribute name: String;
    attribute ipAddress: String;
    // Define other attributes related to the server
} 
 

part def Capability {
    attribute name: String;
    attribute description: String;
}  

//Services can be defined as specific capabilities that perform certain actions or provide specific functionalities in the digital space
part def OrderService specializes Capability {
    // Define specific attributes or operations for the OrderService capability
    perform action CreateOrder; // Reference to the CreateOrder action           
}   

port def HTTPPort {
  out item request:HTTPRequest;
  in item response: HTTPResponse;
}   

part def Modul {
  attribute description: String;
  attribute type: modultype; // Type of the module (server or client)
  abstract ref part  link:  ModulLink; // Link to the server or client module
  abstract ref part  linked:  ModulLink; // Link to the server or client module
  
  //ref capabilities: Capability;
  port comm: HTTPPort; // Port for HTTP communication
}


part mod1 : Modul ;
part mod2 : Modul ;

interface def HTTPInterface {
  end mod1port  : HTTPPort;
  end mod2port  : ~HTTPPort;
  flow of request: HTTPRequest from mod1port.request to mod2port.request  ; // Define the flow of the HTTP request from mod1 to mod2
  flow of response: HTTPResponse from mod2port.response to mod1port.response; // Define the
 }
 
 interface : HTTPInterface connect mod1.comm to mod2.comm; // Connect the HTTP ports of mod1 and mod2 


connection def Coupling {
end part linkingsouce;
end part linkedsource;
}

//* connection def Coupling2 {
end part Modul;
end part Modul2;
 } */ 
connection c1: Coupling connect mod1.link to mod2.linked;
//connection c2: Coupling2 connect mod1 to mod3;

}