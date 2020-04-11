data aws_ecs_task_definition this {
  task_definition = var.ecs_task_definetion_family
}

resource aws_ecs_service this {
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

  tags = var.tags
}

resource null_resource update_service {
  triggers = {
    task_definition_arn = data.aws_ecs_task_definition.this.id
  }

  provisioner local-exec {
    command = "aws ecs update-service --cluster ${aws_ecs_service.this.cluster} --service ${aws_ecs_service.this.name} --task-definition ${data.aws_ecs_task_definition.this.id} --force-new-deployment"
  }
}
