provider "github" {
  token = var.token
  owner = "hibeekaey"
}

module "repository" {
  for_each           = var.repositories
  source             = "../../modules/repository"
  name               = each.value.name
  description        = each.value.description
  visibility         = each.value.visibility
  archived           = each.value.archived
  archive_on_destroy = each.value.archive_on_destroy
}
