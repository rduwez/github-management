terraform {
  backend "remote" {
    organization = "Epsi-romain"
    
    workspaces {
      name = "TP_Note_github_management"
    }
  }
}
