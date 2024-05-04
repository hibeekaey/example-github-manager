output "name" {
  value       = github_repository.this.name
  description = "GitHub repository name"
}

output "visibility" {
  value       = github_repository.this.visibility
  description = "GitHub repository visibility"
}

output "archived" {
  value       = github_repository.this.archived
  description = "GitHub repository archived"
}

output "url" {
  value       = github_repository.this.html_url
  description = "GitHub repository URL"
}
