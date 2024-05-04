module "repository" {
  source             = "../../modules/repository"
  name               = "example-with-branch"
  description        = "This is an example repository with a default branch"
  visibility         = "private"
  archived           = false
  archive_on_destroy = false
}

module "repository_default_branch" {
  source                = "../../modules/branch"
  repository_name       = module.repository.name
  repository_visibility = module.repository.visibility
  repository_archived   = module.repository.archived
  depends_on            = [module.repository]
}

module "repository_develop_branch" {
  source                = "../../modules/branch"
  name                  = "develop"
  repository_name       = module.repository.name
  repository_visibility = module.repository.visibility
  repository_archived   = module.repository.archived
  depends_on            = [module.repository_default_branch]
}
