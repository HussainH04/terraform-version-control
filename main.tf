terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "hello" {
  filename = "${path.module}/output/hello.txt"
  content  = "${var.message}\n"
}

resource "local_file" "info" {
  filename = "${path.module}/output/info.txt"
  content  = "Environment: ${var.environment}\nOwner: ${var.owner}\n"
}
variable "test" {   type=string }
