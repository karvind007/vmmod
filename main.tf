resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = "n1-standard-4"
  zone         = "asia-south2-a"
  project      = "fresh-media-337914"

  boot_disk {
    initialize_params {
      image = "windows-server-2019-dc-v20211216"
    }
  }


  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}