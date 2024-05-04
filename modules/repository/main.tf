resource "github_repository" "this" {
  name        = var.name
  description = var.description

  visibility         = var.visibility
  archived           = var.archived
  archive_on_destroy = var.archive_on_destroy

  auto_init              = true
  delete_branch_on_merge = true
  vulnerability_alerts   = true

  allow_auto_merge    = var.visibility == "private" ? false : true
  allow_merge_commit  = true
  allow_rebase_merge  = true
  allow_squash_merge  = true
  allow_update_branch = true

  security_and_analysis {}
}
