terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = ">=2.5.2"
    }
  }
}

resource local_file test {
  filename = "Jenkins.txt"
  content = "this is first jenkins pipeline"
}