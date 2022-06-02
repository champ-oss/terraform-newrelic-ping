module "test1" {
  source = "../../"
  name   = "terraform-test-example.com"
  uri    = "https://www.example.com"
}

module "test2" {
  source = "../../"
  name   = "terraform-test-google.com"
  uri    = "https://www.google.com"
}