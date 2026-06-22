package mobilNodes {
    private import foundations_identity::*;
    private import foundations_datetype::*;
    private import computeNodes::*;
    private import mobilNodes::*;
    
    private import capabilities::*;
    private import coupling::*;
    private import structuralUnits::*; 
    private import ScalarValues::*;


    abstract part def MobilNode specializes ComputeNode {
    attribute mobilNodeId: String[1]; // Unique identifier for the mobile node
    attribute mobilNodeDescription: String; // Description of the mobile node
    attribute mobilNodeNature: nodeType; // Nature of the mobile node (e.g., physical, virtual)
    part mobilNodeCpu: CPUUnit; // CPU unit of the mobile node
    part mobilNodeMem: MemoryUnit; // Memory unit of the mobile node
    part mobilNodeOs: OSUnit; // Operating system unit of the mobile node
    part mobilNodeFirmware: FirmwareUnit; // Firmware unit of the mobile node
    part mobilNodeNic: NetworkController; // Network controller unit of the mobile node
    part mobilNodeGui: GuiController; // GUI controller unit of the mobile node
    part mobilNodeSerial: SerialController; // Serial controller unit of the mobile node
    part mobilNodeCryp: CryptoController; // Crypto controller unit of the mobile node
    }
}