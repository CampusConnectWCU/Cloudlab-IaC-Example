locals {
  # one head (public), two workers (private)
  nodes = {
    head = {
      name        = var.node_names["head"]
      routable_ip = true
    }
    worker1 = {
      name        = var.node_names["worker1"]
      routable_ip = false
    }
    worker2 = {
      name        = var.node_names["worker2"]
      routable_ip = false
    }
  }
}

resource "cloudlab_vm" "nodes" {
  for_each    = local.nodes

  name        = each.value.name
  aggregate   = var.aggregate
  image       = var.image
  routable_ip = each.value.routable_ip

  # All on the same L2 segment (vnet)
  vlans = [
    {
      name        = var.vlan_name
      subnet_mask = var.subnet_mask
    }
  ]
}
