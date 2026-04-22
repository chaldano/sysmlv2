
private package communication::protocols {
  import ScalarValues::*; 
  import StandardLibrary::*; 
  import foundation::identity::*;

  item def Protocol specializes IdentifiedEntity { 
    attribute name: String; 
    attribute layer: String; }
}
