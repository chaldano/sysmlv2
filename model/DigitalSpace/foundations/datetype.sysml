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

item def HTTPRequest {
    attribute method: String; // HTTP method (e.g., GET, POST, PUT, DELETE)
    attribute url: String; // URL of the HTTP request
    attribute headers: String; // HTTP headers as key-value pairs
    attribute body: String; // Body of the HTTP request (for POST/PUT requests)
  }
item def HTTPResponse {
    attribute statusCode: Integer; // HTTP status code (e.g., 200, 404, 500)
    attribute headers: String; // HTTP headers as key-value pairs
    attribute body: String; // Body of the HTTP response      
    }

  item def DataFlow {
    attribute dataType: String; // Type of data being transferred
    attribute size: Integer; // Size of the data being transferred (in bytes)
    }
 }