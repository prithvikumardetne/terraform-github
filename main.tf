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

resource "github_branch" "development" {
  repository = "terraform-github"
  branch     = "dev"
}