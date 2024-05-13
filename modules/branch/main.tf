data "github_user" "this" {
  username = var.username
}

resource "github_branch" "this" {
  repository = var.repository_name
  branch     = var.name
}

resource "github_branch_default" "this" {
  count      = var.name == "main" ? 1 : 0
  repository = var.repository_name
  branch     = github_branch.this.branch
}

resource "github_branch_protection" "this" {
  count = var.repository_visibility == "public" && !var.repository_archived ? 1 : 0

  repository_id = var.repository_name

  pattern                         = var.name
  enforce_admins                  = true
  require_conversation_resolution = true
  allows_force_pushes             = false
  allows_deletions                = var.name == "main" ? false : true

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    require_last_push_approval      = true
    required_approving_review_count = 1
  }

  force_push_bypassers = [
    data.github_user.this.node_id
  ]

  lifecycle {
    ignore_changes = [force_push_bypassers]
  }
}
