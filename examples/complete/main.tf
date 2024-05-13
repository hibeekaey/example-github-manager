module "manager" {
  source       = "../../"
  token        = var.token
  repositories = var.repositories
}
