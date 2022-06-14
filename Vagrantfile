Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/bionic64"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 1024
    vb.cpus = 2
    vb.name = "ubuntu_bionic_terraform"
  end

  config.vm.define "terraform" do |terraform|
    terraform.vm.network "public_network", ip: "192.168.3.28"

    terraform.vm.provision "shell",
    inline: 'curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - && \
      apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
      apt-get update && \
      apt-get upgrade -y && \
      apt-get install -y terraform unzip && \
      curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv.zip" && \
      unzip awscliv.zip && \
      sudo ./aws/install'
  end

end