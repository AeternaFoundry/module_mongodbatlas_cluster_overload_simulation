variable "cluster_overload_simulations" {
  description = <<EOT
Map of cluster_overload_simulations, attributes below
Required:
    - cluster_name
    - duration_seconds
    - project_id
Optional:
    - delete_on_create_timeout
    - timeouts
EOT

  type = map(object({
    cluster_name             = string
    duration_seconds         = number
    project_id               = string
    delete_on_create_timeout = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

