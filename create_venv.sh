#!/bin/bash

# Verifica se o nome do ambiente virtual foi fornecido
if [ $# -eq 0 ]; then
    echo "Uso: $0 nome_do_ambiente"
    exit 1
fi

# Define o nome do ambiente virtual
virtualenv_name="$1"

# Cria o ambiente virtual
python3 -m venv "$virtualenv_name"

chmod +x "$virtualenv_name/bin/activate"

# Ativa o ambiente virtual
source "$virtualenv_name/bin/activate"

# Instala o gerenciador de pacotes pip caso não esteja instalado
python3 -m pip --version >/dev/null 2>&1 || { echo >&2 "Pip não está instalado. Instalando..."; sudo apt-get install python3-pip -y; }

# Atualiza o pip
python3 -m pip install --upgrade pip
source "$virtualenv_name/bin/activate"
echo "Ambiente virtual '$virtualenv_name' criado e ativado."
# source "$virtualenv_name/bin/activate"