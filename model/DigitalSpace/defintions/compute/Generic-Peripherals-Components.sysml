package Generic_Peripherals_Library{
    private import Generic_IO_Library::*;
    private import ScalarValues::*;
    
    // Definition of abstract peripheral component 
    abstract part def PeripheralComponent {
        attribute name : String;
        attribute manufacturer : String;
        attribute model : String;
        port ioPort : ~GenericIOPort;
    }

}