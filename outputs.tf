output "network_security_group_ids" {
  value = [for x in azurerm_network_security_group.this : x.id]
}
