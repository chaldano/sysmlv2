package ai::definitions {
  import StandardLibrary::*;

  item def AIModel;

  item def Predictor specializes AIModel;
  item def Classifier specializes AIModel;
  item def Optimizer specializes AIModel;
}
