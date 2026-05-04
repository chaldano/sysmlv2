package Generic_ComputeNode {
    private import foundations_identity::*;
    private import Generic_Peripherals_Library::*;
    private import Generic_IO_Library::*;
    private import ScalarValues::*;
   
   // Motherboard component for compute nodes, using the Motherboard definition from the library
    abstract part def Motherboard {
        attribute model : String;
        attribute manufacturer : String;
        port motherboardPort : GenericIOPort; // Assuming a generic IO port for Motherboard, can be specialized further
    }
    part motherboards : Motherboard[1..*]; // A compute node can have one or more motherboards
   
   //Firmware component for compute nodes, using the Firmware definition from the library
    abstract part def Firmware {
        attribute version : String;
        attribute manufacturer : String;
        port firmwarePort : GenericIOPort; // Assuming a generic IO port for Firmware, can be specialized further
    }
    part firmwares : Firmware[1..*]; // A compute node can have one or more firmware components

   // CPU components for compute nodes, using the CPU definition from the library
    abstract part def CPU {
        attribute model : String;
        attribute cores : Integer;
        attribute clockSpeed : String;
        port cpuPort : GenericIOPort; // Assuming a generic IO port for CPU, can be specialized further
    }
    part cpus : CPU[1..*]; // A compute node can have one or more CPUs

    // GPU components for compute nodes, using the GPU definition from the library
    abstract part def GPU {
        attribute memorySize : String;
        attribute coreClock : String;
        port gpuPort : GenericIOPort; // Assuming a generic IO port for GPU, can be specialized further
    }
    part gpus : GPU[1..*]; // A compute node can have one or more GPUs

    // Memory components for compute nodes, using the Memory definition from the library
    abstract part def Memory {
        attribute size : String;
        attribute type : String;
        port memoryPort : GenericIOPort; // Assuming a generic IO port for Memory, can be specialized further
    }
    part memories : Memory[1..*]; // A compute node can have one or more memory modules
   
   // Storage components for compute nodes, using the Storage definition from the library 
    abstract part def Storage {
        attribute capacity : String;
        attribute type : String;
        port storagePort : GenericIOPort; // Assuming a generic IO port for Storage, can be specialized further                   
        }
   part storages : Storage[1..*]; // A compute node can have one or more storage devices   
   
   // Network Interface Card (NIC) components for compute nodes, using the NetworkInterfaceCard definition from the library
    abstract part def NetworkInterfaceCard {
        attribute macAddress : String;
        port nicioPort : GenericIOPort; // Assuming a generic IO port for NIC, can be specialized further
    }
    part networkInterfaceCards : NetworkInterfaceCard[0..*]; // A compute node can have zero or more NICs

   // Peripheral components for compute nodes, using the PeripheralComponent definition from the library
   part def Peripheral :> PeripheralComponent; // A compute node can have zero or more peripherals, using the PeripheralComponent definition from the library
   part peripherals : Peripheral[0..*];

    // Definition of a generic compute node
   abstract part def GenericComputeNode :> IdentifiedEntity  {
        attribute nodeName : String;
        part redefines motherboards : Motherboard; // Each compute node has one motherboard
        part redefines firmwares : Firmware[1..*]; // Each compute node has one or more firmware components
        part redefines cpus : CPU[1..*];  
        part redefines memories : Memory[1..*];
        part redefines gpus : GPU[0..*];
        part redefines storages : Storage[0..*];    
        part redefines peripherals : Peripheral[0..*];
        part redefines networkInterfaceCards : NetworkInterfaceCard[0..*];
    }
}