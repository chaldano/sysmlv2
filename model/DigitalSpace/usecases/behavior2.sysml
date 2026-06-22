package behaviorSystem2{

    item def datum1 {
        in item 'item1.1';
        out item 'item1.2';
        in item 'item1.3';
    }

    item def datum2 {
        out item 'item2.1';
    }

action def Action1;
action def Action2;
action def Action3;

action action1 : Action1{
    in input1;
    bind input1 = action2.input2;
    //out output1;

    action action2: Action2{
        in input2;
        out output2;
    } 
    flow action2.output2 to action3.input3;
    action action3: Action3 {
        in input3;
        out output3;
    }
       bind action3.output3 = output1;
out output1;
}
}