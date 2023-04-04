resource "google_compute_instance" "dareit-vm-ci-task7" {
  name         = "dareit-vm-tf-ci-task7"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["dareit", "debian11"]

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

resource "google_storage_bucket" "dareit-task7-branch" {
  name          = "new_branch_bucket_task7"
  location      = "US"

  uniform_bucket_level_access = true
}