variable "name" {
  description = "The name of the node pool. A random string will be appended to this name, to allow replacement node pools to be created before destroying the current pool."
  default = "node-pool-1"
 }

variable "node_version" {
  description = "The name of the GKE cluster to bind this node pool."
  default = "1.16"
}

variable "node_count" {
  description = "The initial node count for the pool, per availability zone. Changing this will force recreation of the resource."
  default     = "1"
}

variable "min_node_count" {
  description = "Minimum number of nodes for autoscaling, per availability zone."
  default = "1"
}

variable "max_node_count" {
  description = "Maximum number of nodes for autoscaling, per availability zone."
}
variable "min_master_version" {
  description = "The kubernetes version for the nodes in the pool. This should match the Kubernetes version of the GKE cluster."
  default  = "1.16"
}

variable "machine_type" {
  description = "The machine type of nodes in the pool."
  default     = "e2-medium"
}

variable "disk_size_in_gb" {
  description = "Disk size, in GB, for the nodes in the pool."
  default     = "20"
}

variable "node_tags" {
  type        = "list"
  description = "List of strings for tags on node pool VMs. These are generally used for firewall rules."
  default     = ["k8-cluster"]
}


variable "node_labels" {
  description = "Key Value Pairs of Labels to add to the nodes in the pool"
  type        = "map"
  default = {
    k8s = "cluster"
    jbnl = "john"
    }
}

variable "disk_type" {
  description = "Type of the disk attached to each node"
  default     = "pd-standard"
}

variable "additional_oauth_scopes" {
  type        = "list"
  description = "List of strings for additional oauth scope in a node config"
  default     = ["https://www.googleapis.com/auth/cloud-platform"]
}

variable "auto_repair" {
  description = "Whether the nodes will be automatically repaired"
  default     = true
}

variable "auto_upgrade" {
  description = "Whether the nodes will be automatically upgraded"
  default     = false
}

variable "preemptible_nodes" {
  description = "Whether to use preemptible nodes"
  default     = true
}
variable "image_type" {
  default = "COS"
  description = "image type"
}
variable "google_credentials_json" {
  default = "fuchicorp-service-account.json"
  description = "- (Optional) Google Service account Json file."
}
variable "cluster_name" {
  default = "fuchicorp-cluster"
  description = "- (Optional) Google Cluster name."
}

variable "deployment_name" {
  default = "cluster-infrastructure"
}

variable "google_region" {
  default = "us-central1"
  description = "- (Optional) Google Region where cluster will be deployed."
}

variable "google_domain_name" {
  default = "fuchicorp.com"
  description = "- (Optional) The domain name for cluster."
}
variable "google_project_id" {
  default = "get-from-console"
  description = "- (Optional) Google Project ID for the cluster."
}

variable "cluster_node_count" {
  default = "3"
  description = "- (Optional) Count of clusters node"
}

variable "cluster_version" {
  default = "1.16"
  description = "- (Optional) The cluster version to deploy."
}