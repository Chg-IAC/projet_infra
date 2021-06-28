###############VCENTER####################
variable "vsphere_user" {
    description ="user"
    type = string
    default ="administrator@vsphere.local"
}
variable "vsphere_password" {
    description ="vsphere_password"
    type = string
    default ="Espoir123."
}
variable "vsphere_server" {
    description ="vsphere_server"
    type = string
    default ="10.0.2.1"
}
variable "datacenter" {
  default = "DC-Livestreaming_Prod"
}
variable "datastore" {
  default = "vsanDatastore"
}
variable "cluster" {
  default = "vSan-Livestreaming_Prod"
}
variable "rp" {
  default = "RP-Livestreaming-Prod"
}
variable "policy" {
  default = "vSAN Default Storage Policy"
}
variable "network" {
  default = "pG-VM-LAN-Livestreaming"
}
variable "adapter_interface" {
  default = "e1000"
}
################Ressource_VM##################
variable "template_name" {
  default = "ubuntu20.04_template"
}
variable "cpus" {
  default = "4"
}
variable "cpus_lb" {
  default = "1"
}
variable "memory" {
  default = "4096"
}
variable "memory_lb" {
  default = "512"
}
variable "disk_type" {
  default = "disk0"
}
variable "disk_size" {
  default = "30"
}

variable "vm_dns" {
  default = "10.0.2.2"
}
variable "vm_gateway" {
  default = "10.0.2.254"
}
variable "vm_domain" {
  default = "livestreaming.local"
}
variable "vm_netmask" {
  default = "24"
}

variable "master-nodes" {
    type = map
    default = {
        "park8s001mp" = "10.0.2.52"
        "park8s002mp" = "10.0.2.53"
        "park8s003mp" = "10.0.2.54"
    }
}

variable "worker-nodes" {
    type = map
    default = {
        "park8s001wp" = "10.0.2.55"
        "park8s002wp" = "10.0.2.56"
        "park8s003wp" = "10.0.2.57"
    }
}

variable "lb-nodes" {
    type = map
    default = {
        "parlbc001mp" = "10.0.2.50"
        "parlbc001wp" = "10.0.2.51"
    }
}


###########Ressource TAg#############

variable "K8S_tag" {
  default = "K8S"
  
}

variable "LBC_tag" {
  default = "LBC"
  
}

variable "Master_attrubute_name" {
  default = "Master"
  
}

variable "Worker_attrubute_name" {
  default = "Worker"
  
}




#####################################################################
