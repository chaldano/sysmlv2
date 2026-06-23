package plattforms {

    abstract part def serviceProvider;

    part def MDM specializes serviceProvider;
    part def GDC specializes serviceProvider;
    part def ABM specializes serviceProvider;

}