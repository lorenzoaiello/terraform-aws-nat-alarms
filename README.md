# Terraform Module for AWS NAT Cloudwatch Alarms

This Terraform module manages Cloudwatch Alarms for all NAT Gateways in the region. It does NOT create or manage NAT Gateways, only Metric Alarms.

**Requires**:
- AWS Provider
- Terraform 0.12

## Alarms Created

Alarms Always Created:
- Any dropped packets
- Any port allocation errors

**Estimated Operating Cost**: $ 0.20 / month

- $ 0.10 / month for Metric Alarms (2x)

## Example

```hcl-terraform
module "aws-efs-alarms" {
  source            = "lorenzoaiello/nat-alarms/aws"
  version           = "x.y.z"
}

```

## Variables

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| actions\_alarm | A list of actions to take when alarms are triggered. Will likely be an SNS topic for event distribution. | `list` | `[]` | no |
| actions\_ok | A list of actions to take when alarms are cleared. Will likely be an SNS topic for event distribution. | `list` | `[]` | no |
| efs\_id | EFS ID | `string` | n/a | yes |
| evaluation\_period | The evaluation period over which to use when triggering alarms. | `string` | `"5"` | no |
| prefix | Alarm Name Prefix | `string` | `""` | no |
| statistic\_period | The number of seconds that make each statistic period. | `string` | `"60"` | no |
## Outputs

| Name | Description |
|------|-------------|
| alarm\_dropped\_packets | The CloudWatch Metric Alarm resource block for dropped packets |
| alarm\_error\_allocating\_ports | The CloudWatch Metric Alarm resource block for port allocation errors |
