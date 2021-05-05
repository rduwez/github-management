resource "github_repository" "new_repository" {
  name        = var.new_repository_name
  description = "Créé un nouveau repository"
  auto_init   = "true"

  visibility  = "public"
}

resource "github_branch_protection_v3" "branch_main" {
  repository  = github_repository.new_repository.name
  branch      = "main"
}