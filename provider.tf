provider "google" {
  credentials = "${var.google_credentials_json}" #GOOGLE_CREDENTIALS to the path of a file containing the credential JSON
  project     = "${var.google_project_id}"
}
