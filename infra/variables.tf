variable "aggregate" {
  description = "CloudLab aggregate site"
  type        = string
  default     = "clemson.cloudlab.us"
}

variable "image" {
  description = "Base image name"
  type        = string
  default     = "UBUNTU 18.04"
}

variable "vlan_name" {
  description = "VLAN name for cluster"
  type        = string
  default     = "cluster-vlan"
}

variable "subnet_mask" {
  description = "Subnet mask"
  type        = string
  default     = "255.255.255.0"
}

variable "node_names" {
  description = "Names for head and workers"
  type        = map(string)
  default = {
    head    = "head-01"
    worker1 = "worker-01"
    worker2 = "worker-02"
  }
}
