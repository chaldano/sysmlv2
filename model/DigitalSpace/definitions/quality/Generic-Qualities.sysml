package 'quality-definitions' {

  item def Dependability;

  item def Reliability specializes Dependability;   // Zuverlässigkeit
  item def Safety specializes Dependability;        // Unfallfreiheit
  item def Integrity specializes Dependability;     // Unverfälschtheit
  item def Availability specializes Dependability;  // Verfügbarkeit
  item def Resilience specializes Dependability;    // Resilienz
  item def Maintainability specializes Dependability; // Wartbarkeit


  // Security als Teil der Verlässlichkeit
  item def Security specializes Dependability;
  item def Confidentiality specializes Security;
  item def Authentication specializes Security;
  item def Authorization specializes Security;
}
