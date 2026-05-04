package Specific_IO_Ports{
    private import Generic_IO_Library::*;
    private import ScalarValues::*; 
    
    // CPU Port Definitions for ports and interfaces
    attribute def CPUData specializes GenericPortData;
    attribute def CPUControl specializes GenericPortData;
    port def CPUPort specializes GenericIOPort {
        attribute connectorType : String;
        inout databus : CPUData[0..16];
        inout controlsignals : CPUControl;
    }
    interface def CPUConnection {
        end aPort : CPUPort;
        end bPort : ~CPUPort;
    }
    // RS232 Port Definitions for ports and interfaces
    attribute def SerialBit specializes GenericPortData;
    port def RS232Port specializes GenericIOPort {
        attribute connectorType : String;
        inout tx : SerialBit;
        inout rx : SerialBit;
        inout gnd;
    }
    interface def RS232Connection {
        end aPort : RS232Port;
        end bPort : ~RS232Port;
    }
    // RS485 Port Definitions for ports and interfaces

    attribute def RS485Bit specializes GenericPortData;
    port def RS485Port specializes GenericIOPort {
        attribute connectorType : String;
        inout a : RS485Bit;
        inout b : RS485Bit;
        inout gnd;
    }

    //USB Port Definitions for ports and interfaces
    attribute def USBPacket specializes GenericPortData; 
    port def USBPort specializes GenericIOPort {
        attribute connectorType : String;
        inout dplus : USBPacket;
        inout dminus : USBPacket;
        inout vbus;
        inout gnd;
     
    }
    interface def USBConnection {
            end aPort : USBPort;
            end bPort : ~USBPort;
        }

    //SCSI Port Definitions for ports and interfaces
    attribute def SCSIData specializes GenericPortData;
    attribute def SCSIControl specializes GenericPortData;

    port def SCSIPort specializes GenericIOPort {
        attribute connectorType : String;
        inout databus : SCSIData[0..8];
        inout controlsignals : SCSIControl;
    }

    interface def SCSIConnection {
        end aPort : SCSIPort;
        end bPort : ~SCSIPort;
    }
// PCI Port Definitions for ports and interfaces
    attribute def PCIData specializes GenericPortData;
    attribute def PCIControl specializes GenericPortData;

    port def PCIPort specializes GenericIOPort {
        attribute connectorType : String;
        inout databus : PCIData[0..8];
        inout controlsignals : PCIControl;
    }
    interface def PCIConnection {
     end aPort : PCIPort;
     end bPort : ~PCIPort;   
    }
// PCI-Express Port Definitions for ports and interfaces
    attribute def PCIExpressData specializes GenericPortData;
    attribute def PCIExpressControl specializes GenericPortData;

    port def PCIExpressPort specializes GenericIOPort {
        attribute connectorType : String;
        inout databus : PCIExpressData[0..16];
        inout controlsignals : PCIExpressControl;
    }
    interface def PCIExpressConnection {
        end aPort : PCIExpressPort;
        end bPort : ~PCIExpressPort;
    }
    //SAS Port Definitions for ports and interfaces
    attribute def SASData specializes GenericPortData;
    attribute def SASControl specializes GenericPortData;
    port def SASPort specializes GenericIOPort {
        attribute connectorType : String;
        inout databus : SASData[0..8];
        inout controlsignals : SASControl;
    }   
    interface def SASConnection {
        end aPort : SASPort;
        end bPort : ~SASPort;
    }
//SATA Port Definitions for ports and interfaces
    attribute def SATAData specializes GenericPortData;
    attribute def SATAControl specializes GenericPortData;

    port def SATAPort specializes GenericIOPort {
        attribute connectorType : String;
        inout databus : SATAData[0..8];
        inout controlsignals : SATAControl;
    }
    interface def SATAConnection {
        end aPort : SATAPort;
        end bPort : ~SATAPort;
    }   
//NVMe Port Definitions for ports and interfaces
    attribute def NVMeData specializes GenericPortData;
    attribute def NVMeControl specializes GenericPortData;

    port def NVMePort specializes GenericIOPort {
        attribute connectorType : String;
        inout databus : NVMeData[0..16];
        inout controlsignals : NVMeControl;
    }
    interface def NVMeConnection {
        end aPort : NVMePort;
        end bPort : ~NVMePort;
    }   

//Ethernet Port Definitions for ports and interfaces
    port def EthernetPort specializes GenericIOPort {
        attribute connectorType : String;
        attribute speed : String;
    }
    interface def EthernetConnection {
        end aPort : EthernetPort;
        end bPort : ~EthernetPort;
    }
// WLAN Port Definitions for ports and interfaces
    port def WLANPort specializes GenericIOPort {
        attribute connectorType : String;
        attribute speed : String;
    }
    interface def WLANConnection {
            end aPort : WLANPort;
            end bPort : ~WLANPort;
        }   
//HDMI Port Definitions for ports and interfaces
    port def HDMIPort specializes GenericIOPort {
        attribute connectorType : String;
        attribute version : String;
         }
    interface def HDMIConnection {
        end aPort : HDMIPort;
        end bPort : ~HDMIPort;
        }
//DisplayPort Definitions for ports and interfaces
    port def DisplayPort specializes GenericIOPort {
        attribute connectorType : String;
        attribute version : String;
    }
    interface def DisplayPortConnection {
        end aPort : DisplayPort;
        end bPort : ~DisplayPort;
    }
//Thunderbolt Port Definitions for ports and interfaces
    port def ThunderboltPort specializes GenericIOPort {
        attribute connectorType : String;
        attribute version : String;
    }
    interface def ThunderboltConnection {
        end aPort : ThunderboltPort;
        end bPort : ~ThunderboltPort;
    }
//VGA Port Definitions for ports and interfaces
    port def VGAPort specializes GenericIOPort {
        attribute connectorType : String;
        attribute version : String;
    }
    interface def VGAConnection {
        end aPort : VGAPort;
        end bPort : ~VGAPort;
    }
    //DVI Port Definitions for ports and interfaces
    port def DVIPort specializes GenericIOPort {
        attribute connectorType : String;
        attribute version : String;
    }
    interface def DVIConnection {
        end aPort : DVIPort;
        end bPort : ~DVIPort;
    }
    //Audio Jack Port Definitions for ports and interfaces
    port def AudioJackPort specializes GenericIOPort {
        attribute connectorType : String;
        attribute version : String;
    }
    interface def AudioJackConnection {
        end aPort : AudioJackPort;
        end bPort : ~AudioJackPort;
     }
    }