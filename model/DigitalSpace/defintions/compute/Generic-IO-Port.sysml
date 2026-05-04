package Generic_IO_Library {

    // Definition of abstract port data type for generic port data
    abstract attribute def GenericPortData;
    
    // Defition of abstract IOPort
    abstract port def GenericIOPort {
        inout genericStream : GenericPortData[*];
    }
    abstract interface def GenericConnection{
        end aPort : GenericIOPort;
        end bPort : ~GenericIOPort;
    }

}