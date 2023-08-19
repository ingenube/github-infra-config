output "full_repositories_name" {
  description = "Map of repositories with their full name"
  value       = module.github_setup.full_repositories_name
}

output "repositories_url" {
  description = "Map of repositories with their URL"
  value       = module.github_setup.repositories_url
}