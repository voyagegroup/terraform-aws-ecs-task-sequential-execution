variable "name" {
  description = "About this name."
  type        = string
}

variable "cluster_name" {
  description = "ECS Fargate Cluster name."
  type        = string
}

variable "ecs_task_definetion_family" {
  description = "ECS Fargate Task Definition family."
  type        = string
}

variable "subnets" {
  description = "Specify the subnet on which to run ECS Fargate."
  type        = list(string)
}

variable "security_groups" {
  description = "Specify the security groups to attach."
  type        = list(string)
}

variable "assign_public_ip" {
  description = "Choose whether to have your tasks receive a public IP address. If you are using Fargate tasks, in order for the task to pull the container image it must either use a public subnet and be assigned a public IP address or a private subnet that has a route to the internet or a NAT gateway that can route requests to the internet."
  type        = bool
  default     = false
}
