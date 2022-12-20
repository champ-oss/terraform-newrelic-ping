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
| <a name="requirement_newrelic"></a> [newrelic](#requirement\_newrelic) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_newrelic"></a> [newrelic](#provider\_newrelic) | 3.11.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.9.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [newrelic_synthetics_monitor.this](https://registry.terraform.io/providers/newrelic/newrelic/latest/docs/resources/synthetics_monitor) | resource |
| [time_sleep.this](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_synthetic_monitor"></a> [enable\_synthetic\_monitor](#input\_enable\_synthetic\_monitor) | enable or disable resource for synthetic monitor | `bool` | `true` | no |
| <a name="input_locations_public"></a> [locations\_public](#input\_locations\_public) | List of location names to monitor from | `list(string)` | <pre>[<br>  "US_EAST_1",<br>  "US_EAST_2",<br>  "US_WEST_1",<br>  "US_WEST_2",<br>  "CA_CENTRAL_1"<br>]</pre> | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the monitor | `string` | `"test"` | no |
| <a name="input_period"></a> [period](#input\_period) | How often the monitor should run, in minutes | `string` | `"EVERY_MINUTE"` | no |
| <a name="input_status"></a> [status](#input\_status) | Status of monitor | `string` | `"enabled"` | no |
| <a name="input_uri"></a> [uri](#input\_uri) | URI to monitor | `string` | `"https://www.google.com"` | no |
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


