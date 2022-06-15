terraform {
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
    }
  }
}

resource "newrelic_synthetics_monitor" "this" {
  name              = var.name
  type              = "SIMPLE"
  frequency         = var.frequency
  status            = upper(var.status)
  locations         = var.locations
  sla_threshold     = var.sla_threshold
  uri               = var.uri
  validation_string = var.validation_string
  verify_ssl        = var.verify_ssl
}

resource "newrelic_synthetics_alert_condition" "this" {
  count       = var.enable_email || var.enable_slack ? 1 : 0
  policy_id   = newrelic_alert_policy.this[0].id
  name        = var.name
  monitor_id  = newrelic_synthetics_monitor.this.id
  runbook_url = var.runbook_url
}

resource "newrelic_alert_policy" "this" {
  count               = var.enable_email || var.enable_slack ? 1 : 0
  name                = var.name
  incident_preference = var.incident_preference
  channel_ids = [
    newrelic_alert_channel.email[0].id,
    newrelic_alert_channel.slack[0].id
  ]
}

resource "newrelic_alert_channel" "email" {
  count = var.enable_email ? 1 : 0
  name  = "${var.name}-email"
  type  = "email"

  config {
    recipients              = var.email_recipients
    include_json_attachment = var.email_include_json_attachment
  }
}

resource "newrelic_alert_channel" "slack" {
  count = var.enable_slack ? 1 : 0
  name  = "${var.name}-slack"
  type  = "slack"

  config {
    channel = var.slack_channel
    url     = var.slack_url
  }
}