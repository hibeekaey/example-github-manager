output "repository_urls" {
  value       = { for k, v in module.repository : k => v.url }
  description = "GitHub repository URLs"
}
