output "endpoint" {
  description = "The address of the elasticache cluster"
  value       = "${aws_elasticache_replication_group.cache_group.configuration_endpoint_address}"
}
