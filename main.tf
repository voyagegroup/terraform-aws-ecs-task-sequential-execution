data "aws_ecs_task_definition" "this" {
  task_definition = var.ecs_task_definetion_family
}

resource "aws_ecs_service" "this" {
  name            = var.name
  cluster         = var.cluster_name
  task_definition = data.aws_ecs_task_definition.this.id
  desired_count   = var.enabled ? 1 : 0
  launch_type     = "FARGATE"

  network_configuration {
    security_groups  = var.security_groups
    subnets          = var.subnets
    assign_public_ip = var.assign_public_ip
  }
}
