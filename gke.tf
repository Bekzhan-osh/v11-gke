resource "google_container_cluster" "primary" {
  name               = "${var.cluster_name}"
  location          = "${var.google_region}"
  node_version       = "${var.cluster_version}"
  min_master_version = "${var.cluster_version}"
  initial_node_count = "${var.cluster_node_count}"
    node_config {
    image_type       = "${var.image_type}"
    disk_size_gb     = "${var.disk_size_in_gb}"
    machine_type     = "${var.machine_type}"
    labels           = "${var.node_labels}"
    disk_type        = "${var.disk_type}"
    tags             = "${var.node_tags}"
    preemptible      = false
    oauth_scopes     = "${var.additional_oauth_scopes}"
  }
    lifecycle {
    create_before_destroy = true
  }
}
