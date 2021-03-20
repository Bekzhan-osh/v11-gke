resource "google_container_cluster" "primary" {
  name               = "${var.cluster_name}"
  location           = "${var.google_region}"
  node_version       = "${var.cluster_version}"
  min_master_version = "${var.cluster_version}"
  initial_node_count = "${var.cluster_node_count}"
  # We can't create a cluster with no node pool defined, but we want to only use
  # separately managed node pools. So we create the smallest possible default
  # node pool and immediately delete it.
  remove_default_node_pool = true
}
