variable "resource_group_name" {
  description = "Name of the resource group where the vnet is hosted."
  type        = string
}

variable "location" {
  description = "Location of where the NSGs will live in. Needs to be same as virtual network."
  type        = string
}

variable "network_security_groups" {
  description = "Object containing deployment information for subnets."
  type        = any
  default = {
    nsg1 = {
      name               = "nsg-1"
      subnet_association = ["Subnet1", "Subnet2"]
      security_rule = [
        {
          name                       = "test1"
          description                = "My Test 1"
          priority                   = 101
          direction                  = "Outbound"
          access                     = "Allow"
          protocol                   = "Tcp"
          source_port_range          = "*"
          destination_port_range     = "*"
          source_address_prefix      = "*"
          destination_address_prefix = "*"
        },
        {
          name                         = "test2"
          description                  = "My Test 2"
          priority                     = 102
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          destination_port_range       = "*"
          source_address_prefix        = "*"
          destination_address_prefixes = ["192.168.1.5", "192.168.1.6"]
        },
        {
          name                         = "test3"
          description                  = "My Test 3"
          priority                     = 103
          direction                    = "Outbound"
          access                       = "Allow"
          protocol                     = "Tcp"
          source_port_range            = "*"
          destination_port_ranges      = ["22", "3389"]
          source_address_prefix        = "*"
          destination_address_prefixes = ["192.168.1.5", "192.168.1.6"]
        }
      ]
    }
  }
}

variable "subnet_id_map" {
  description = "Map of the names and id of the created subnets."
  type        = map
}
