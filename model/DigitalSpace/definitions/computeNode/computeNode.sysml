package computeNodes {    
    private import foundations_identity::*;
    private import foundations_datetype::*;
   
    private import capabilities::*;
    private import coupling::*;
    private import structuralUnits::*; 
    private import ScalarValues::*;

    part def System specializes IdentifiedEntity;

    // ComputeNode definition, representing a generic compute node in the digital space
    abstract part def ComputeNode specializes IdentifiedEntity {
    attribute nodeId: String[1]; // Unique identifier for the compute node
    attribute description: String; // Description of the compute node
    attribute nature: nodeType; // Nature of the compute node (e.g., physical,
    part cpu:CPUUnit; // CPU unit of the compute node
    part mem: MemoryUnit; // Memory unit of the compute node
    part os: OSUnit; // Operating system unit of the compute node
    part firmware: FirmwareUnit; // Firmware unit of the compute node
    part nic: NetworkController; // Network controller unit of the compute node
    part gui: GuiController; // GUI controller unit of the compute node
    //part serial: SerialController; // Serial controller unit of the compute node
    //part cryp: CryptoController; // Crypto controller unit of the compute node
    }


    }