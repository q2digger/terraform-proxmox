#output "instance_ip_address" {
#  value = proxmox_vm_qemu.test_server.*.default_ipv4_address
#}

#output "instance_name" {
#  value = proxmox_vm_qemu.test_server.*.name
#}

# check some examples
# https://www.bogotobogo.com/DevOps/Terraform/Terraform-Introduction-AWS-loops.php

output "instance_name_and_ip" {
  value = {
    for instance in proxmox_vm_qemu.test_server:
      instance.name => instance.default_ipv4_address
  }
}

