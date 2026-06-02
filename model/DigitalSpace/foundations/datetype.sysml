 package 'foundations_datetype' {
  private import ScalarValues::*;
    attribute def Date {
        attribute year  : Integer;
        attribute month : Integer;
        attribute day   : Integer;
    }
   enum def OSFamily { 
        Linux;
        Windows;
        RTOS ;
        }
   enum def nodeType {
        hard;
        virtual;
        physical;
        }
  }