provider "github" {
  token = var.token
  owner = "hibeekaey"
}

module "repository" {
  for_each           = var.repositories
  source             = "./modules/repository"
  name               = each.value.name
  description        = each.value.description
  visibility         = each.value.visibility
  archived           = each.value.archived
  archive_on_destroy = each.value.archive_on_destroy
}

module "repository_default_branch" {
  for_each              = module.repository
  source                = "./modules/branch"
  repository_name       = each.value.name
  repository_visibility = each.value.visibility
  repository_archived   = each.value.archived
  depends_on            = [module.repository]
}
