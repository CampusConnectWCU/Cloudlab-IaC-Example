resource "cloudlab_vm" "my_cloudlab_vm" {
  name         = "vm-name"
  aggregate    = "clemson.cloudlab.us"
  image        = "UBUNTU 18.04"
  routable_ip  = true

  vlans = [
    {
      name        = "vlan-name"
      subnet_mask = "255.255.255.0"
    }
  ]
}

output "experiment_uuid" {
  value = cloudlab_vm.my_cloudlab_vm.uuid
}
