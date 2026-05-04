package SpecificNodeComponents {
    private import Generic_ComputeNode::*;
    private import Specific_IO_Ports::*;
    private import ScalarValues::*;

    // Definition of specific node components can be added here as needed
    // For example, if there are specific types of CPUs, RAM, or other components that are unique to certain nodes, they can be defined here.
// Example of a specific storage component that might be used in a specific node
part ssdstorge subsets storages {
        attribute capacitySSD : String;
        attribute typeSSD : String;
        port storagePortSSD : SCSIPort; // Using a specific IO port for storage, can be further specialized
    }
// Example of a specific CPU component that might be used in a specific node
part highPerformanceCPU subsets cpus {
        attribute modelHPC : String;
        attribute coresHPC : Integer;
        attribute clockSpeedHPC : String;
        port cpuPortHPC : PCIPort; // Using a specific IO port for CPU, can be further specialized
    }
// Example of a specific memory component that might be used in a specific node
part highCapacityMemory subsets memories {
        attribute sizeHCM : String;
        attribute typeHCM : String;
        port memoryPortHCM : PCIPort; // Using a specific IO port for Memory, can be further specialized
    }
part highEndGPU subsets gpus {
        attribute memorySizeHEG : String;
        attribute coreClockHEG : String;
        port gpuPortHEG : PCIPort; // Using a specific IO port for GPU, can be further specialized
    }
 part highSpeedNIC subsets networkInterfaceCards {
        attribute macAddressHSN : String;
        port nicioPortHSN : EthernetPort; // Using a specific IO port for NIC, can be further specialized
    }   
 part motherboardX subsets motherboards{
        attribute modelMX : String;
        attribute manufacturerMX : String;
        port motherboardPortMX : PCIPort; // Using a specific IO port for Motherboard, can be further specialized
    }
}   