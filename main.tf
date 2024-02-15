provider "google"{
    credentials = file("/home/sravanichedurupaku/creating_VM/flask-key.json")
    project = "	digital-shelter-412213"
    region  = "us-central1"
    zone    = "us-central1-a"
}
resource "google_compute_instance "vminstance" {
    machine_type = "e2-medium"
    region       = "us-central1"
    zone         = "us-central1-a"

    boot_disk{
      initialize_params {
      name      = "vminstance"
      type      = "new-balanced-persistent-disk"
      size      = "10"
      image     = "My First Project/debian-cloud/global/images/debian-10-20240110"
  }
}
network_interface {
    network       = "default"
    access_config = {}  
  }
