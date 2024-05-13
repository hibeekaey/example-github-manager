module "manager" {
  source       = "../../"
  token        = var.token
  username     = var.username
  repositories = var.repositories
}
