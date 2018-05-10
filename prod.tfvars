service_name = "kpter"
environment = "production"
env_prefix = "prod"
project = "gcp-sandbox-200912"
compute_engine_front {
  machine_type = "f1-micro"
  image = "coreos-stable-1688-5-3-v20180403"
}
