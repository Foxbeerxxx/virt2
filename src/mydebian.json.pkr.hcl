source "yandex" "debian_docker" {
  disk_type           = "network-hdd"
  folder_id           = "b1gse67sen06i8u6ri78"
  image_description   = "my custom debian with docker"
  image_name          = "debian-11-docker"
  source_image_family = "debian-11"
  ssh_username        = "debian"
  subnet_id           = "e9bd3ro2jm1n2329qntl"
  token               = "y0__xCT0ufIBxjB3RMggtW4jxOA51ZsI3f2sKmFlatvU579i7Vgfw"
  use_ipv4_nat        = true
  zone                = "ru-central1-a"
}

build {
  sources = ["source.yandex.debian_docker"]

  provisioner "shell" {
    inline = [
      # Очистка проблемных источников и подготовка системы
      "sudo sed -i '/kports/d' /etc/apt/sources.list",
      "sudo rm -f /etc/apt/sources.list.d/*.list",
      
      # Обновление пакетов
      "sudo apt-get update",
      "sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release",
      
      # Установка Docker
      "curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg",
      "echo \"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable\" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null",
      "sudo apt-get update",
      "sudo apt-get install -y docker-ce docker-ce-cli containerd.io",
      
      # Установка дополнительных пакетов
      "sudo apt-get install -y htop tmux",
      
      # Настройка Docker
      "sudo usermod -aG docker debian",
      "echo 'Installation completed: Docker, htop, tmux'"
    ]
  }
}