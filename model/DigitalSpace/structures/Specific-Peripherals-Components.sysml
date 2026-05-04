package Specific_Peripherals_Library{

    private import Generic_Peripherals_Library::*;
    private import Specific_IO_Ports::*;
    private import ScalarValues::*;

    //Mouse peripheral component as a specific peripheral component
    part def Mouse :> PeripheralComponent {
        attribute nameM : String;
        attribute manufacturerM : String;
        attribute modelM : String;
        port mouseioPort : ~USBPort; // Assuming a generic IO port for Mouse
    }
  //Keyboard peripheral component as a specific peripheral component
    part def Keyboard :> PeripheralComponent {
        attribute nameK : String;
        attribute manufacturerK : String;
        attribute modelK : String;
        port keyboardioPort : ~USBPort; // Assuming a generic IO port for Keyboard
    }
    //Scanner peripheral component as a specific peripheral component
    part def Scanner :> PeripheralComponent {
        attribute nameS : String;
        attribute manufacturerS : String;
        attribute modelS : String;
        port scannerioPort : ~USBPort; // Assuming a generic IO port for Scanner
    }
    //Printer peripheral component as a specific peripheral component
    part def Printer :> PeripheralComponent {
        attribute nameP : String;
        attribute manufacturerP : String;
        attribute modelP : String;
        port printerioPort : ~USBPort; // Assuming a generic IO port for Printer
    }
    //External Storage peripheral component as a specific peripheral component
    part def ExternalStorage :> PeripheralComponent {
        attribute nameES : String;
        attribute manufacturerES : String;
        attribute modelES : String;
        port externalStorageioPort : ~USBPort; // Assuming a generic IO port for External Storage
    }
    //USBStorage peripheral component as a specific peripheral component
    part def USBStorage :> PeripheralComponent {
        attribute nameUS : String;
        attribute manufacturerUS : String;
        attribute modelUS : String;
        port usbStorageioPort : ~USBPort; // Assuming a generic IO port for USB Storage
    }
    //Terminal peripheral component as a specific peripheral component
    part def Terminal :> PeripheralComponent {
        attribute nameT : String;
        attribute manufacturerT : String;
        attribute modelT   : String;           
        port terminalioPort : ~RS232Port; // Assuming a generic IO port for Terminal
        }
}