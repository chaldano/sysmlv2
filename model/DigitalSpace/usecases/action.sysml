package actions_example {
private import ScalarFunctions::*;


item def Signal{
    attribute value: Real;
}

item def Eingangsignal :> Signal;
item def Ausgangssignal :> Signal;

action def Function {
    in inparameter: String;
    out outreturn: String;
}

port def Eingang;
in eingang: Eingangsignal;

port def Ausgang;
out ausgang:Ausgangssignal;

action def Systemfunction {
    in item eingang;
    out item ausgang;
}

interface def InternDef {
end p1: Ausgang;
end p2: Eingang;
}

part def System {
port eingang: Eingang;
port ausgang: Ausgang;
action init: Systemfunction;
action down:Systemfunction;
}

item spannung: Eingangsignal;
item drehzahl:Ausgangssignal;

part s1: System;
part s2: System;
part s3: System{
    event occurrence ev1;
}
part s4: System{
    event occurrence ev2;
}

message of Signal from s3.ev1 to s4.ev2;

interface intern1: InternDef {
    connect s1.ausgang to s2.eingang;
}
interface intern2: InternDef connect s2.ausgang to s1.eingang;


    action step1: Function;
    action step2: Function;
    action step3: Function;
    action step4: Function;

flow step1.outreturn to step2.inparameter;
message of Signal from step3  to step4;

}

