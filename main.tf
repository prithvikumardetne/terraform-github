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

