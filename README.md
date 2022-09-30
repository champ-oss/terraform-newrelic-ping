# terraform-newrelic-ping

A Terraform module for creating a New Relic Synthetic monitor

[![.github/workflows/module.yml](https://github.com/champ-oss/terraform-newrelic-ping/actions/workflows/module.yml/badge.svg?branch=main)](https://github.com/champ-oss/terraform-newrelic-ping/actions/workflows/module.yml)
[![.github/workflows/lint.yml](https://github.com/champ-oss/terraform-newrelic-ping/actions/workflows/lint.yml/badge.svg?branch=main)](https://github.com/champ-oss/terraform-newrelic-ping/actions/workflows/lint.yml)
[![.github/workflows/sonar.yml](https://github.com/champ-oss/terraform-newrelic-ping/actions/workflows/sonar.yml/badge.svg)](https://github.com/champ-oss/terraform-newrelic-ping/actions/workflows/sonar.yml)

[![SonarCloud](https://sonarcloud.io/images/project_badges/sonarcloud-black.svg)](https://sonarcloud.io/summary/new_code?id=terraform-newrelic-ping_champ-oss)

[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=terraform-newrelic-ping_champ-oss&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=terraform-newrelic-ping_champ-oss)
[![Vulnerabilities](https://sonarcloud.io/api/project_badges/measure?project=terraform-newrelic-ping_champ-oss&metric=vulnerabilities)](https://sonarcloud.io/summary/new_code?id=terraform-newrelic-ping_champ-oss)
[![Reliability Rating](https://sonarcloud.io/api/project_badges/measure?project=terraform-newrelic-ping_champ-oss&metric=reliability_rating)](https://sonarcloud.io/summary/new_code?id=terraform-newrelic-ping_champ-oss)

## Example Usage

See the `examples/` folder

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_newrelic"></a> [newrelic](#requirement\_newrelic) | >= 3.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_newrelic"></a> [newrelic](#provider\_newrelic) | >= 3.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [newrelic_alert_channel.email](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel) | resource |
| [newrelic_alert_channel.slack](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel) | resource |
| [newrelic_alert_policy.this](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_policy) | resource |
| [newrelic_synthetics_alert_condition.this](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/synthetics_alert_condition) | resource |
| [newrelic_synthetics_monitor.this](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/synthetics_monitor) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_email_include_json_attachment"></a> [email\_include\_json\_attachment](#input\_email\_include\_json\_attachment) | https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel#include_json_attachment | `bool` | `false` | no |
| <a name="input_email_recipients"></a> [email\_recipients](#input\_email\_recipients) | https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel#recipients | `string` | `","` | no |
| <a name="input_enable_alerts"></a> [enable\_alerts](#input\_enable\_alerts) | https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel#email | `bool` | `false` | no |
| <a name="input_enable_synthetic_monitor"></a> [enable\_synthetic\_monitor](#input\_enable\_synthetic\_monitor) | enable or disable resource for synthetic monitor | `bool` | `true` | no |
| <a name="input_incident_preference"></a> [incident\_preference](#input\_incident\_preference) | https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_policy#incident_preference | `string` | `"PER_POLICY"` | no |
| <a name="input_locations_public"></a> [locations\_public](#input\_locations\_public) | List of location names to monitor from | `list(string)` | <pre>[<br>  "AWS_US_EAST_1",<br>  "AWS_US_EAST_2",<br>  "AWS_US_WEST_1",<br>  "AWS_US_WEST_2",<br>  "AWS_CA_CENTRAL_1"<br>]</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the monitor | `string` | n/a | yes |
| <a name="input_period"></a> [period](#input\_period) | How often the monitor should run, in minutes | `string` | `"EVERY_MINUTE"` | no |
| <a name="input_runbook_url"></a> [runbook\_url](#input\_runbook\_url) | https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/synthetics_alert_condition#runbook_url | `string` | `""` | no |
| <a name="input_slack_channel"></a> [slack\_channel](#input\_slack\_channel) | https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel#channel | `string` | `""` | no |
| <a name="input_slack_url"></a> [slack\_url](#input\_slack\_url) | https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/alert_channel#url | `string` | `"https://hooks.slack.com/services/XXXXXXX/XXXXXXX/XXXXXXXXXX"` | no |
| <a name="input_status"></a> [status](#input\_status) | Status of monitor | `string` | `"enabled"` | no |
| <a name="input_uri"></a> [uri](#input\_uri) | URI to monitor | `string` | n/a | yes |
| <a name="input_validation_string"></a> [validation\_string](#input\_validation\_string) | Optional validation string to check the URI for | `string` | `""` | no |
| <a name="input_verify_ssl"></a> [verify\_ssl](#input\_verify\_ssl) | Check the validity of the SSL certificate | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Monitor ID |
<!-- END_TF_DOCS -->

## Features
- Creates a synthetic monitor in New Relic for a URL
- Supports email and slack alerts (using `enable_alerts = true`)


## Contributing


