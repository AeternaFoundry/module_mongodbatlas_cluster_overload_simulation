resource "mongodbatlas_cluster_overload_simulation" "cluster_overload_simulations" {
  for_each = var.cluster_overload_simulations

  cluster_name             = each.value.cluster_name
  duration_seconds         = each.value.duration_seconds
  project_id               = each.value.project_id
  delete_on_create_timeout = each.value.delete_on_create_timeout
  timeouts                 = each.value.timeouts
}

