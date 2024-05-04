module "repository" {
  source             = "../../modules/repository"
  name               = "example"
  description        = "This is an example repository"
  visibility         = "public"
  archived           = false
  archive_on_destroy = false
}
