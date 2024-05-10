source "vagrant" "phase1" {
  communicator = "ssh"
  source_path = "gusztavvargadr/windows-10"
  box_version = "2202.0.2404"
  provider = "virtualbox"
  add_force = true
}

build {
  sources = ["source.vagrant.phase1"]

  post-processors {
    post-processor "shell-local" {
    inline = [
        "vagrant box add output-phase1/package.box --force --name msi-windows-10-base --provider virtualbox"
      ]
    }
  }
}
