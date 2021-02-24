resource aws_ecs_service this {
  name            = var.name
  cluster         = var.cluster_name
  task_definition = var.ecs_task_definition_family
  desired_count   = var.enabled ? 1 : 0
  launch_type     = var.ecs_launch_type
  platform_version = var.ecs_launch_type ? "FARGATE" : var.ecs_fargate_platform_version

  network_configuration {
    security_groups  = var.security_groups
    subnets          = var.subnets
    assign_public_ip = var.assign_public_ip
  }

  lifecycle {
    ignore_changes = [task_definition]
  }

  tags = var.tags
}
