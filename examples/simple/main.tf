module ecs_task_sequential_execution {
  source                     = "../.."
  name                       = var.name
  cluster_name               = aws_ecs_cluster.this.name
  security_groups            = [aws_security_group.this.id]
  subnets                    = module.vpc.private_subnets
  assign_public_ip           = false
  ecs_task_definition_family = aws_ecs_task_definition.this.family
}
