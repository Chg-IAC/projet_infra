resource "vsphere_virtual_machine" "master-nodes" {
  for_each = var.master-nodes
  name             = each.key
  resource_pool_id = "${data.vsphere_resource_pool.pool.id}"
  datastore_id     = "${data.vsphere_datastore.datastore.id}"
  tags 		   = ["${vsphere_tag.PARK8SMP_TAG.id}"] 

  num_cpus = var.cpus
  memory   = var.memory
  guest_id = "${data.vsphere_virtual_machine.template.guest_id}"

  network_interface {
    network_id = "${data.vsphere_network.network.id}"
    adapter_type = var.adapter_interface
  }

  disk {
    storage_policy_id = "${data.vsphere_storage_policy.policy.id}"
    label = var.disk_type
    size  = var.disk_size
  }
  clone {
    template_uuid = "${data.vsphere_virtual_machine.template.id}"
    customize {
      timeout = "20"

      linux_options {
        host_name = each.key
        domain    = var.vm_domain
      }
      network_interface {
        ipv4_address = var.master-nodes[each.key]
        ipv4_netmask = var.vm_netmask
      }
      ipv4_gateway    = var.vm_gateway
      dns_server_list = [var.vm_dns]
    }
  }
}