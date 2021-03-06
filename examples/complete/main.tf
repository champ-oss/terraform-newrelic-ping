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

module "alerting" {
  source        = "../../"
  name          = "terraform-test-email"
  uri           = "https://www.example.com"
  enable_alerts = true
}