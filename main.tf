locals {
  task_definition = var.ecs_task_definition_family_revision == null ? var.ecs_task_definition_family : "${var.ecs_task_definition_family}:${var.ecs_task_definition_family_revision}"
}

resource aws_ecs_service this {
  name            = var.name
  cluster         = var.cluster_name
  task_definition = local.task_definition
  desired_count   = var.enabled ? 1 : 0
  launch_type     = "FARGATE"

  network_configuration {
    security_groups  = var.security_groups
    subnets          = var.subnets
    assign_public_ip = var.assign_public_ip
  }

  lifecycle {
    ignore_changes = var.ignore_changes_in_ecs_service
  }

  tags = var.tags
}
