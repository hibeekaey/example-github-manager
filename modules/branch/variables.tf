variable "username" {
  type        = string
  description = "GitHub username"
}

variable "name" {
  type        = string
  description = "GitHub repository branch name"
  default     = "main"
}

variable "repository_name" {
  type        = string
  description = "GitHub repository name"
}

variable "repository_visibility" {
  type        = string
  description = "GitHub repository visibility"
}

variable "repository_archived" {
  type        = bool
  description = "GitHub repository archived"
}
