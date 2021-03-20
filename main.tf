resource "google_container_node_pool" "primary_preemptible_nodes" {
  cluster            = "${google_container_cluster.primary.name}"
  name               = "${var.name}"
  location           = "${var.google_region}"
  version            = "${var.cluster_version}"
  node_count         = "${var.node_count}"

  autoscaling {
    min_node_count   = "${var.min_node_count}"
    max_node_count   = "${var.max_node_count}"
  }

  node_config {
    image_type       = "${var.image_type}"
    disk_size_gb     = "${var.disk_size_in_gb}"
    machine_type     = "${var.machine_type}"
    labels           = "${var.node_labels}"
    disk_type        = "${var.disk_type}"
    tags             = "${var.node_tags}"
    preemptible      = "${var.preemptible_nodes}"
    oauth_scopes     = "${var.additional_oauth_scopes}"
  }

  management {
    auto_repair     = "${var.auto_repair}"
    auto_upgrade    = "${var.auto_upgrade}"
  }

  lifecycle {
    create_before_destroy = true
  }
}
