terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.73.1"
    }
  }
}

provider "proxmox" {
  endpoint  = "https://192.168.1.250:8006/"  # URL de l'API Proxmox
  api_token = var.proxmox_api_token
  insecure  = true  # Désactiver si un certificat SSL valide est installé
  
  ssh {
    agent    = true
    username = "root"
  }
}