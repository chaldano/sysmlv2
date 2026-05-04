package SpecificComputeNode {
    private import ScalarValues::*;
    private import Generic_ComputeNode::*;
    private import Specific_Peripherals_Library::*;
    private import Specific_IO_Ports::*;
   private import 'foundations_identity'::*;
   
    // Concrete compute node N1 with SSD, RS232, and Ethernet    
    part def N1 :> GenericComputeNode {
        attribute idN1: Identifier {
            valueid1 = "N1";
        }          
        attribute nodeName1 : String = "N1";
        attribute cpuModel : String = "Generic CPU";
        attribute ramSize : String = "16GB";
        attribute storageCapacity : String = "1TB";
        
        part N1motherboard subsets motherboards {
            modeln1 = "Generic Motherboard";
            manufacturern1 = "Generic Manufacturer";
        }
        part N1firmware subsets firmwares {
            versionn1 = "1.0";
            manufacturern1 = "Generic Manufacturer";
        }
        part N1cpu subsets cpus {
            modeln1 = "Generic CPU";
            coresn1 = 8;
            clockSpeedn1 = "3.0 GHz";
        }
        part N1memory subsets memories {
            sizen1 = "16GB";
            typen1 = "DDR4";
        }   
        part N1storage subsets storages {
            capacityn1 = "1TB";
            typen1 = "SSD";
        }
        part N1nic subsets networkInterfaceCards {
            macAddressn1 = "00:1A:2B:3C:4D:5E";
        }
        part N1Serial subsets peripherals {
            attribute peripheralName : String = "RS232 Serial Port";
            attribute peripheralType : String = "Serial Communication";
            port peripheralPort : RS232Port; // Using a specific RS232 port definition from the library
        }
        part N1USB subsets peripherals {
            attribute peripheralName : String = "USB Port";
            attribute peripheralType : String = "USB3";
            port peripheralPort : USBPort; // Using a specific USB port definition from the library
        }
    }
}