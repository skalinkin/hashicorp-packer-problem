source "vagrant" "phase2" {
  communicator = "ssh"
  source_path = "local-windows-10-base"
  provider = "virtualbox"
  add_force = true
  skip_add = true
}

build {
  sources = ["source.vagrant.phase2"]
  
  post-processors {
    post-processor "shell-local" {
    inline = [
        "vagrant box add output-phase1/package.box --force --name local-phase2 --provider virtualbox"
      ]
    }
  }
}
