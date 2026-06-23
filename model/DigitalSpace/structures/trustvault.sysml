package TrustVault {
    private import foundations_datetype::*;
    private import computeNodes::*;
    private import capabilities::*;
    private import coupling::*;
    private import communication_port::*;
    private import structuralUnits::*;
    private import ScalarValues::*;
    private import plattforms::*;

part def AppleNode specializes ComputeNode;

port def PRegistry{
    out psmb: PNodeOutput;
    out pwbdav: PNodeOutput;
}
port def PGUI{
    inout usergui: PNodeOutInput;
}
port def PGovCenter{
    in security: PNodeInput;
}

part mdm : MDM{
    port mobilphone: ~PRegistry;
}

interface def REG {
    end: PNodeOutput;
    end: ~PNodeOutput;
}


part IphoneSystem:System{
ref part aNode: AppleNode;
 port registry: PRegistry ;
 port usergui: PGUI; 
 port govcenter: PGovCenter;

}

interface smb: REG connect IphoneSystem.registry.psmb to mdm.mobilphone.psmb;
interface wdav: REG connect IphoneSystem.registry.pwbdav to mdm.mobilphone.pwbdav;


    // MVS definition, representing a Multi-Vector System in the digital space
  //*   part def AppeMobilPhone specializes MobilNode {
        attribute mvsId: String[1]; // Unique identifier for the MVS
        attribute mvsDescription: String; // Description of the MVS
        attribute mvsNature: nodeType; // Nature of the MVS (e.g., physical, virtual)
        part mvsCpu: CPUUnit; // CPU unit of the MVS
        part mvsMem: MemoryUnit; // Memory unit of the MVS
        part mvsOs: OSUnit; // Operating system unit of the MVS
        part mvsFirmware: FirmwareUnit; // Firmware unit of the MVS
        part mvsNic: NetworkController; // Network controller unit of the MVS
        part mvsGui: GuiController; // GUI controller unit of the MVS
        part mvsSerial: SerialController; // Serial controller unit of the MVS
        part mvsCryp: CryptoController; // Crypto controller unit of the MVS
    } */
}