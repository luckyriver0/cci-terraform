provider "google" {
  # credentials = "${file("/path/to/account.json")}"    # refer to environment variables
  project = "${var.project}"
  region = "${var.region}"
}

terraform {
  backend "gcs" {
    bucket  = ""
    prefix  = ""
  }
}

module "kpter-infrastructure" {
  source = "./modules/gcp"

  service_name = "${var.service_name}"
  environment = "${var.environment}"
  env_prefix = "${var.env_prefix}"
  project = "${var.project}"
  region = "${var.region}"
  zone = "${var.zone}"

  compute_engine_front {
    machine_type = "${var.compute_engine_front["machine_type"]}"
    image = "${var.compute_engine_front["image"]}"
  }
}
