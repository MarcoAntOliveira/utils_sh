#!/bin/bash

# Função para desinstalar pacotes do Octave
uninstall_octave_package() {
  package_name=$1
  echo "Desinstalando pacote Octave: $package_name"
  octave --eval "pkg uninstall $package_name"
}

# Desinstalar pacotes Octave (adicione ou remova pacotes conforme necessário)
uninstall_octave_package control
uninstall_octave_package signal
uninstall_octave_package image

# Remover GNU Octave
echo "Removendo GNU Octave..."
sudo apt remove -y octave

# Limpar pacotes desnecessários
echo "Limpando pacotes desnecessários..."
sudo apt autoremove -y

echo "Desinstalação concluída!"
