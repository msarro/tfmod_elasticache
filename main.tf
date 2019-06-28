resource "aws_elasticache_subnet_group" "cache_subnet_group" {
  name       = "cache-subnet-group"
  subnet_ids = ["${var.subnet_ids}"]
}

resource "aws_elasticache_replication_group" "cache_group" {
  replication_group_id          = "cache-${var.environment}"
  replication_group_description = "Replication group for ${var.environment} elasticache"
  node_type                     = "${var.node_type}"
  port                          = 6379
  parameter_group_name          = "${var.parameter_group_name}"
  automatic_failover_enabled    = true
  maintenance_window            = "${var.maintenance_window}"
  security_group_ids            = ["${var.security_group_ids}"]
  subnet_group_name             = "${aws_elasticache_subnet_group.cache_subnet_group.id}"

  cluster_mode {
    replicas_per_node_group = "${var.replicas_per_node_group}"
    num_node_groups         = "${var.num_node_groups}"
  }
}
