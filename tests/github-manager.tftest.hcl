variables {
  private_repository = {
    name               = "github-private-repository-test"
    description        = "This is a test private repository"
    visibility         = "private"
    archived           = false
    archive_on_destroy = false
  }
  public_repository = {
    name               = "github-public-repository-test"
    description        = "This is a test public repository"
    visibility         = "public"
    archived           = false
    archive_on_destroy = false
  }
}

run "setup_tests" {
  module {
    source = "./tests/setup"
  }
}

run "create_repositories" {
  command = apply

  variables {
    repositories = {
      "github-private-repository-test" = merge(var.private_repository, {
        name = join("-", [run.setup_tests.repository_prefix, var.private_repository.name])
      })
      "github-public-repository-test" = merge(var.public_repository, {
        name = join("-", [run.setup_tests.repository_prefix, var.public_repository.name])
      })
    }
  }

  # Check that the repositories' names are correct
  assert {
    condition     = module.repository["github-private-repository-test"].name == join("-", [run.setup_tests.repository_prefix, var.private_repository.name])
    error_message = "Invalid private repository name"
  }
  assert {
    condition     = module.repository["github-public-repository-test"].name == join("-", [run.setup_tests.repository_prefix, var.public_repository.name])
    error_message = "Invalid public repository name"
  }

  # Check that the repositories' visibilities are correct
  assert {
    condition     = module.repository["github-private-repository-test"].visibility == "private"
    error_message = "Invalid private repository visibility"
  }
  assert {
    condition     = module.repository["github-public-repository-test"].visibility == "public"
    error_message = "Invalid public repository visibility"
  }
}

run "change_repositories_visibilities" {
  command = apply

  variables {
    repositories = {
      "github-private-repository-test" = merge(var.private_repository, {
        name       = join("-", [run.setup_tests.repository_prefix, var.private_repository.name])
        visibility = "public"
      })
      "github-public-repository-test" = merge(var.public_repository, {
        name       = join("-", [run.setup_tests.repository_prefix, var.public_repository.name])
        visibility = "private"
      })
    }
  }

  # Check that the repositories' names are correct
  assert {
    condition     = module.repository["github-private-repository-test"].name == join("-", [run.setup_tests.repository_prefix, var.private_repository.name])
    error_message = "Invalid public repository name"
  }
  assert {
    condition     = module.repository["github-public-repository-test"].name == join("-", [run.setup_tests.repository_prefix, var.public_repository.name])
    error_message = "Invalid private repository name"
  }

  # Check that the repositories' visibilities are correct
  assert {
    condition     = module.repository["github-private-repository-test"].visibility == "public"
    error_message = "Invalid public repository visibility"
  }
  assert {
    condition     = module.repository["github-public-repository-test"].visibility == "private"
    error_message = "Invalid private repository visibility"
  }
}
