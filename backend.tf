terraform {
  backend "gcs" {
    bucket  = "jbnl"
    prefix  = "dev/k8-fuchicrops"
    project = "eternal-ruler-308205"
  }
}
