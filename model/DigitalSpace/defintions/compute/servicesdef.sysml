
package 'definitions-services'{
  private import ScalarValues::*; 
  private import 'foundations-identity'::*; 
  private import 'communication-protocols'::*;
  private import 'communication-endpoint'::*;
  
  connection def ServiceLink { 
    end  attribute: String; 
    end  attribute: String; 
    }
  
  part def Service specializes IdentifiedEntity { 
    attribute name: String; 
    part api: ServiceLink; 
      attribute tprotocol: Protocol; 
      attribute tport: Integer; }
}