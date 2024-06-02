#!/bin/bash

# Atualizar a lista de pacotes
echo "Atualizando lista de pacotes..."
sudo apt update

# Instalar GNU Octave
echo "Instalando GNU Octave..."
sudo apt install -y octave

# Função para instalar pacotes do Octave
install_octave_package() {
  package_name=$1
  echo "Instalando pacote Octave: $package_name"
  octave --eval "pkg install -forge $package_name"
}

# Instalar pacotes Octave
install_octave_package control
install_octave_package signal
install_octave_package image

# Carregar os pacotes instalados (opcional)
echo "Carregando pacotes instalados..."
octave --eval "pkg load control"
octave --eval "pkg load signal"
octave --eval "pkg load image"

# Verificar pacotes instalados
echo "Pacotes instalados:"
octave --eval "pkg list"

echo "Instalação concluída!"
