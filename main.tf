provider "proxmox" {
    pm_api_url = var.pm_api_url
    pm_api_token_id = var.pm_api_token_id
    pm_api_token_secret = var.pm_api_token_secret
    pm_tls_insecure = true
}

resource "proxmox_vm_qemu" "test_server" {
    count = var.count_vm
    name = "test-vm-${count.index + 1}"

    target_node = var.proxmox_host
    clone = var.template_name

    # settings
    agent = 1
    os_type = "cloud_init"
    cores = 2
    sockets = 1
    cpu = "host"
    memory = 2048
    scsihw = "virtio-scsi-pci"
    bootdisk = "scsi0"

    disk {
        slot = 0
        size = "8G"
        type = "scsi"
        storage = "DATA"
        iothread = 1
    }

    network {
        model = "virtio"
        bridge = "vmbr0"
    }

    lifecycle {
      ignore_changes = [
          network,
      ]
    }

    #ipconfig0 = "ip=10.98.1.9${count.index + 1}/24,gw=10.98.1.1"
    ipconfig0 = "ip=dhcp"
    #ciuser  = "addo"
    sshkeys = <<EOF
    ${var.ssh_key}
    EOF
}

