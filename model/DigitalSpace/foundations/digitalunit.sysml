package 'foundations-unit' {
  private import ISQ::*;
  private import Base::*;         // HIER ist DataValue definiert
 
    // 1. Definition der physikalischen Größe (Quantity)
  public attribute def InformationQuantity :> DataValue;

    // 2. Definition der Einheit (Unit) als Attribut
   public attribute def byte :> InformationQuantity {
        doc /* Eine digitale Informationseinheit bestehend aus 8 Bit. */
    }

    // Optional: Abgeleitete Einheiten
   public attribute def Kbyte :> InformationQuantity;
   public attribute def Gbyte :> InformationQuantity;  
   public attribute def MbytePerSecond :> InformationQuantity;  

}