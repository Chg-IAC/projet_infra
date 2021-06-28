################################################
################################################
#######Connection du script au Vsphere##########
################################################
################################################
provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_password
  vsphere_server = var.vsphere_server

  # If you have a self-signed cert
  allow_unverified_ssl = true
}
################################################
################################################
######Récupere les données du datacenter########
################################################
################################################
data "vsphere_datacenter" "datacenter" {
  name = var.datacenter
}
data "vsphere_datastore" "datastore" {
  name          = var.datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_compute_cluster" "cluster" {
  name          = var.cluster
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_resource_pool" "pool" {
  name          = var.rp
  datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
}
data "vsphere_network" "network" {
  name          = var.network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}
data "vsphere_storage_policy" "policy" {
  name = var.policy
}
data "vsphere_virtual_machine" "template" {
  name          = var.template_name
  datacenter_id = "${data.vsphere_datacenter.datacenter.id}"
}



