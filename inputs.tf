variable "environment" {
  description = "Environment of this elasticache deployment"
}

variable "subnet_ids" {
  description = "Subnet ids for this elasticache deployment"
  type        = "list"
}

variable "node_type" {
  description = "The type of node for hosting elasticache"
}

variable "parameter_group_name" {
  description = "What version of elasticache to use"
  default     = "default.redis4.0.cluster.on"
}

variable "maintenance_window" {
  description = "Best maintenance window for elasticache"
  default     = "sun:05:00-sun:09:00"
}

variable "security_group_ids" {
  description = "A list of security groups that should be applied to the elasticache cluster"
  type        = "list"
}

variable "replicas_per_node_group" {
  description = "The number of redis replicas per node group"
  default     = 1
}

variable "num_node_groups" {
  description = "The number of redis node groups"
  default     = 2
}
