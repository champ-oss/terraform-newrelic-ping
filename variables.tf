variable "name" {
  description = "Name of the monitor"
  type        = string
}

variable "uri" {
  description = "URI to monitor"
  type        = string
}

variable "frequency" {
  description = "How often the monitor should run, in minutes"
  default     = 1
  type        = number
}

variable "locations" {
  description = "List of location names to monitor from"
  type        = list(string)
  default = [
    "AWS_US_EAST_1",
    "AWS_US_EAST_2",
    "AWS_US_WEST_1",
    "AWS_US_WEST_2",
    "AWS_CA_CENTRAL_1"
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

variable "sla_threshold" {
  description = "Response time in seconds to determine if performance is satisfactory, tolerate, or frustrating for the user"
  type        = number
  default     = 5.0
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