package os_capability {
    private import ScalarValues::*;
    private import 'foundations_identity'::*;
    private import capabilities::*;
    private import 'coupling'::*;

    // Definition of OSCapability, representing an operating system capability in the digital space
    part def OSCapability specializes Capability {
        attribute osInterface: String; // Description of the network interface
        port osPort: CouplingPort; // Port for coupling with other nodes or components
    }
}