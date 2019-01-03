# This is the test
resource "azure_virtual_network" "default" {
  name          = "test-network"
  address_space = ["10.1.2.0/24"]
  location      = "West US"

  subnet {
    name           = "subnet1"
    address_prefix = "10.1.2.0/26"
    name           = "subnet2"
    address_prefix = "10.1.2.128/26"
    name           = "subet3" 
    address_prefix =  "10.1.2.192/26"
  }
}