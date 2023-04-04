resource "google_compute_instance" "dareit-vm-ci-task7-second-branch-vm" {
  name         = "dareit-vm-tf-ci-task7-second-branch-vm"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["dareit", "debian11", "secondbranch"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        managed_by_terraform = "true"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}