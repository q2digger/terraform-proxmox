variable "ssh_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAqY35/QSTDbA4AUwBZGOwEnA7aF717PtLEdBWtl9QcIQIFkgfl2QhjSXbYNCQFHcDBdPpL4kCxCrGZtxuddApjmbbvyn7sIaRXbD24p+pkuZrpQm02r+xG4NNB9DBgfzFuVhTW4zN7E1jgv4VVbAcj/5gqHQO1Ivv/oxcBeg+ESsE0bwAA9TQLw5xtWGzAq2mnWejU/q9ubL3lIH7SYOr4QsNKyqdkgsGOCkKt/UXPtcDP/hyrbXa0fYyQ1X9/mhRAb0+3uD/i9UsXWgl5zfVUMwG2wud6qz+3VGhmjcWBs+6coNLj3THw1bSN+MiLx8gw0VK/KatbFNyNWXF98kjrQ== dmitryg@wwl-dmitryg"
}
variable "proxmox_host" {
    default = "pve1"
}
variable "template_name" {
    default = "ubuntu-2004-cloud-init"
}
