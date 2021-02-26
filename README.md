# terraform-aws-ecs-task-sequential-execution

![Terraform](https://github.com/voyagegroup/terraform-aws-ecs-task-sequential-execution/workflows/Terraform/badge.svg)

[Terraform Registry](https://registry.terraform.io/modules/voyagegroup/ecs-task-sequential-execution/aws)

A terraform module to set up your ECS task the sequential execution.

![](https://raw.githubusercontent.com/voyagegroup/terraform-aws-ecs-task-sequential-execution/master/docs/draw-io.png)

## Usage

[examples](https://github.com/voyagegroup/terraform-aws-ecs-task-sequential-execution/tree/master/examples)

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_name | ECS Fargate Cluster name. | `string` | n/a | yes |
| ecs\_task\_definition\_family | ECS Fargate Task Definition family. | `string` | n/a | yes |
| name | About this name. | `string` | n/a | yes |
| security\_groups | Specify the security groups to attach. | `list(string)` | n/a | yes |
| subnets | Specify the subnet on which to run ECS Fargate. | `list(string)` | n/a | yes |
| assign\_public\_ip | Choose whether to have your tasks receive a public IP address. If you are using Fargate tasks, in order for the task to pull the container image it must either use a public subnet and be assigned a public IP address or a private subnet that has a route to the internet or a NAT gateway that can route requests to the internet. | `bool` | `false` | no |
| ecs\_launch\_type | ECS task launch type. | `string` | `"FARGATE"` | no |
| ecs\_fargate\_platform\_version | ECS Fargate platform versions | `string` | `"LATEST"` | no |
| enabled | The boolean flag whether this execution is enabled or not. No execution when set to false. | `bool` | `true` | no |
| tags | A map of tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| ecs\_service\_name | ecs service name. |


