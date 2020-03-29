## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| assign\_public\_ip | Choose whether to have your tasks receive a public IP address. If you are using Fargate tasks, in order for the task to pull the container image it must either use a public subnet and be assigned a public IP address or a private subnet that has a route to the internet or a NAT gateway that can route requests to the internet. | `bool` | `false` | no |
| cluster\_name | ECS Fargate Cluster name. | `string` | n/a | yes |
| name | About this name. | `string` | n/a | yes |
| security\_groups | Specify the security groups to attach. | `list(string)` | n/a | yes |
| subnets | Specify the subnet on which to run ECS Fargate. | `list(string)` | n/a | yes |
| ecs\_task\_definetion\_family | ECS Fargate Task Definition family. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| ecs\_service\_name | n/a |

