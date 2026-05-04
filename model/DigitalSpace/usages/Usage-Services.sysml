package Usage_Services  {
  private import ScalarValues::*; 
  private import Generic_Service::*;
    
  part def WebService :> ServerService {
    attribute NameWS : String;
    attribute VersionMS : String;
    attribute serviceProvider : String;
    port servicePortMS : ~ServicePort; // Assuming a generic IO port for service interaction
    }
  part def WebClientService :> ClientService {
    attribute serviceNameCL : String;
    attribute serviceVersion : String;
    attribute serviceProvider : String;
    port servicePortCL : ServicePort; // Assuming a generic IO port for service interaction 
    }   
interface WSaccess subsets accessServices {
  connect[1] WebClientService.servicePortCL to[1] WebService.servicePortMS; // Connect client port to server port 
    // Define any additional operations or attributes for service access if needed
  }
}