variable "name" {
  description = "Name of the monitor"
  default     = "test2"
  type        = string
}

variable "uri" {
  description = "URI to monitor"
  default     = "https://www.google.com"
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

variable "enable_synthetic_monitor" {
  description = "enable or disable resource for synthetic monitor"
  type        = bool
  default     = true
}
