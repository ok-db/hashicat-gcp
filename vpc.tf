module "network" {
  source  = "app.terraform.io/ok-db-gcp-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "gaurav-network"
  gaurav-network = var.project
  subnets = [
    {
      subnet_name   = "gaurav-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
}