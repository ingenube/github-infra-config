output "full_repositories_name" {
  description = "Map of repositories with their full name"
  value       = module.github_setup.full_repositories_name
}

output "repositories_url" {
  description = "Map of repositories with their URL"
  value       = module.github_setup.repositories_url
}

output "branch_protections" {
  description = "Map of branches per repo which their respective rules"
  value       = module.github_setup.branch_protections
}

output "external_entities" {
  description = "Map of external entities with their respective permissions over repos"
  value       = module.github_setup.external_entities
}
