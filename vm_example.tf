resource "proxmox_vm_quemu" "srv_demo_1" {
  name = ""
  desc = ""
  vmid = ""
  target_node = ""

  agent = 1

  clone = ""
  cores = ""
  sockets = ""
  cpu = ""
  memory = ""

  network {
    bridge = ""
    model = "virtio"
  }

  disk {
    storage = "local-lvm"
    type = "virtio"
    size = "20G"
  }

  os_type = "cloud-init"
  ipconfig0 = "ip=10.20.30.40/16,gw=10.20.30.1"
  nameserver = ""
  ciuser = "xcad"
  sshkeys = <<EOF
  ssh-rsa <some key>
  EOF
}
