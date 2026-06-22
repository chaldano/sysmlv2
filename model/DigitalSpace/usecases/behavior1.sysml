package behaviorSystem1{

    item def datum1 {
        in item 'item1.1';
        out item 'item1.2';
        in item 'item1.3';
    }

    item def datum2 {
        out item 'item2.1';
    }

action action1 {
    inout par1: datum1;
    out par2: datum2; 
}
}