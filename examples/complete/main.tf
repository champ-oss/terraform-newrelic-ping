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

module "email" {
  source           = "../../"
  name             = "terraform-test-email"
  uri              = "https://www.example.com"
  enable_email     = true
  email_recipients = "test@example.com"
}