resource "github_team" "management_team" {
  name        = var.new_management_team_name
  description = "Créé une nouvelle team dans l'organisation"
  privacy     = "closed"
}

resource "github_membership" "new_membership" {
  username    = var.new_membership_name
  role        = "member"
}

resource "github_team_membership" "add_team_membership" {
  team_id     = github_team.management_team.id
  username    = var.new_membership_name
}

resource "github_team_repository" "permissions_team_repository" {
  team_id     = github_team.management_team.id
  repository  = github_repository.new_repository.name
  permission  = "admin"
}