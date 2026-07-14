package structuralUnits {
    private import foundations_identity::*;
    private import capabilities::*;
    private import coupling::*;
    private import ScalarValues::*;
    
    enum def CPUFamily{
        Intel;
        ARM;
        A_Serie;

    }
    
    enum def OSFamily { 
        enum Linux;
        enum Windows;
        enum RTOS ;
        enum IOS;
        }
    
    // StructuralUnit definition, representing a generic structural unit in the digital space
    abstract part def StructuralUnit specializes IdentifiedEntity {
     attribute type: String; // The type of the structural unit (e.g., ComputeNode, StorageNode, NetworkNode)
     attribute version: String; // The version of the structural unit (e.g., v1.0, v2.0)
    ref capabilities : Capability[*]; // A structural unit can have one or more capabilities
    }

    abstract part def NodeUnit specializes StructuralUnit { 
    }   
    abstract part def CouplingUnit specializes StructuralUnit { 
    }   
    // Exmaple od NodeUnit of ComputeNode type

    item def ProtocolData;

    part def netport {
        in response: ProtocolData;
        out request: ProtocolData;
    }

    part def OSUnit specializes NodeUnit {
    attribute type : OSFamily redefines type; // The family of the operating system (e.g., Linux, Windows, RTOS)
    }
    part def FirmwareUnit specializes NodeUnit {
    attribute type : String redefines type; // The type of firmware (e.g., BIOS, UEFI)
    }
    part def CPUUnit specializes NodeUnit {
    attribute type : CPUFamily redefines type; // The type of CPU (e.g., x86, ARM)
    }   
    part def MemoryUnit specializes NodeUnit {
    attribute type : String redefines type; // The type of memory (e.g., RAM, Flash)
    }   
    part def GuiController specializes NodeUnit {
    attribute type : String redefines type; // The type of GUI controller (e.g., touchscreen, mouse)
    }   
    part def NetworkController  specializes NodeUnit {             
       attribute type : String redefines type; // The type of network interface (e.g., Ethernet, Wi-Fi)
       nicport:netport;
    }
    part def SerialController specializes NodeUnit {   
    attribute type : String redefines type; // The type of serial interface (e.g., UART, SPI)
    }
    part def CryptoController specializes NodeUnit {
    attribute type : String redefines type; // The type of crypto controller (e.g., TPM, HSM)
    }
}