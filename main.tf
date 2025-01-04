terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.4.0"
    }
  }
}

provider "github" {
  # Configuration options
}

resource "github_repository" "terraform-github" {
  name        = "terraform-github"
  description = "My awesome codebase"
  auto_init   = true
}

resource "github_branch" "main" {
  repository = github_repository.terraform-github.terraform-github_branch
  branch     = "main"
}

resource "github_branch_default" "default"{
  repository = github_repository.terraform-github.terraform-github_branch
  branch     = github_branch.main.branch
}