package Generic_Service {
    private import ScalarValues::*; 
    private import 'foundations_identity'::*;
    private import Generic_Peripherals_Library::*;
    
    port def ServicePort {
        attribute protocol : String;
        attribute portNumber : Integer;
    }
    
    abstract part def GenericService :> IdentifiedEntity { 
         attribute serviceName : String;
         attribute serviceType : String;
         attribute version : String;
        port servicePort : ServicePort;
     }
    abstract part def ClientService :> GenericService {
        attribute clientCompatibility : String; // e.g., compatible client types or versions
        attribute computeResourceRequirements : String; // e.g., CPU, Memory, Storage requirements
        attribute osCompatibility : String; // e.g., compatible OS types or versions
        port clientPort : ServicePort; // Assuming a generic IO port for service interaction
    }
    abstract part def ServerService :> GenericService {
        attribute serverCompatibility : String; // e.g., compatible server types or versions
        attribute computeResourceRequirements : String; // e.g., CPU, Memory, Storage requirements
        attribute osCompatibility : String; // e.g., compatible OS types or versions
        port serverPort : ServicePort; // Assuming a generic IO port for service interaction
    }
    interface def Serviceinterface {
        end port RequiredIF : ServicePort;
        end port ProvidedIF : ~ServicePort;
    }

    abstract interface accessServices: Serviceinterface[0..*] {
        // Define any additional operations or attributes for service access if needed
    }
}