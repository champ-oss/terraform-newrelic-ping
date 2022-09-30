variable "name" {
  description = "Name of the monitor"
  type        = string
}

variable "uri" {
  description = "URI to monitor"
  type        = string
}

variable "period" {
  description = "How often the monitor should run, in minutes"
  default     = "EVERY_MINUTE"
  type        = string
}

variable "locations_public" {
  description = "List of location names to monitor from"
  type        = list(string)
  default = [
    "US_EAST_1",
    "US_EAST_2",
    "US_WEST_1",
    "US_WEST_2",
    "CA_CENTRAL_1"
  ]
}

variable "validation_string" {
  description = "Optional validation string to check the URI for"
  default     = ""
  type        = string
}

variable "verify_ssl" {
  description = "Check the validity of the SSL certificate"
  default     = true
  type        = bool
}

variable "status" {
  description = "Status of monitor"
  type        = string
  default     = "enabled"
  validation {
    condition     = contains(["enabled", "muted", "disabled"], var.status)
    error_message = "Expected status to be one of [enabled muted disabled]."
  }
}

variable "runbook_url" {
  description = "https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/synthetics_alert_condition#runbook_url"
  type        = string
  default     = ""
}

variable "incident_preference" {
  description = "https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_policy#incident_preference"
  type        = string
  default     = "PER_POLICY"
}

variable "enable_alerts" {
  description = "https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel#email"
  type        = bool
  default     = false
}

variable "enable_synthetic_monitor" {
  description = "enable or disable resource for synthetic monitor"
  type        = bool
  default     = true
}

variable "email_recipients" {
  description = "https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel#recipients"
  type        = string
  default     = ","
}

variable "email_include_json_attachment" {
  description = "https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel#include_json_attachment"
  type        = bool
  default     = false
}

variable "slack_channel" {
  description = "https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel#channel"
  type        = string
  default     = ""
}

variable "slack_url" {
  description = "https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel#url"
  type        = string
  default     = "https://hooks.slack.com/services/XXXXXXX/XXXXXXX/XXXXXXXXXX"
}