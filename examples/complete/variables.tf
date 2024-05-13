variable "token" {
  type        = string
  description = "GitHub personal access token"
}

variable "username" {
  type        = string
  description = "GitHub username"
}

variable "repositories" {
  type = map(object({
    name               = string
    description        = string
    visibility         = string
    archived           = bool
    archive_on_destroy = optional(bool)
  }))
  description = "GitHub repositories"
}
