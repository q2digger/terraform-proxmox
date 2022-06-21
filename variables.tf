variable "ssh_key" {
}
variable "proxmox_host" {
    default = "pve1"
}
variable "template_name" {
    default = "ubuntu-2004-cloud-init"
}

variable "pm_api_token_id" {}

variable "pm_api_token_secret" {}

variable "pm_api_url" {}

variable "count_vm" {
    default = 1
    type = number
}

