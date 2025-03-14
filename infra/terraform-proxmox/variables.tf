variable "proxmox_api_token" {
  description = "Token d'API Proxmox pour l'authentification"
  type        = string
  sensitive   = true
}

variable "target_node" {
  description = "Noeud Proxmox"
  type        = string
  default     = "pve"
}

variable "vm_tags" {
  description = "Tags des VM"
  type        = list(string)
  default     = [ "ubuntu" ]
}

variable "domain" {
  description = "Domaine"
  type        = string
  default     = "local"
}