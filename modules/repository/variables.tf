variable "name" {
  type        = string
  description = "GitHub repository name"
}

variable "description" {
  type        = string
  description = "GitHub repository description"
}

variable "visibility" {
  type        = string
  description = "GitHub repository visibility"
}

variable "archived" {
  type        = bool
  description = "GitHub repository archived"
}

variable "archive_on_destroy" {
  type        = bool
  description = "GitHub repository archive on destroy"
  default     = true
}
