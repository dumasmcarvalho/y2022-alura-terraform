variable amis {
  type        = map
  default     = {
    "us-east-1" = "ami-09d56f8956ab235b3"
    "us-east-2" = "ami-0fa49cc9dc8d62c84"
  }
}

variable cdirs_acesso_remoto {
  type        = list
  default     = ["45.177.160.190/32","46.177.160.190/32"]
}

variable key_name {
  type        = string
  default     = "terraform-aws"
}