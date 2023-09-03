module "github_setup" {
  source = "git::ssh://git@github.com/ingenube/github_setup.git?ref=v2.0.0"

  owner   = var.owner
  equipos = var.equipos
  token   = var.token

}