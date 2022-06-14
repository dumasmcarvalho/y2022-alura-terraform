terraform {
  backend "remote" {
    organization = "dumasmcarvalho"
    hostname = "app.terraform.io"

    workspaces {
      name = "terraform-aws"
    }
  }
}