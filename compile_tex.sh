#!/bin/bash

# Verifica se o arquivo de entrada foi fornecido
if [ $# -eq 0 ]; then
    echo "Uso: $0 arquivo.tex"
    exit 1
fi

# Obtém o nome do arquivo sem a extensão
filename=$(basename -- "$1")
extension="${filename##*.}"
filename="${filename%.*}"

# Compila o arquivo LaTeX
pdflatex "$filename.tex"

# Verifica se a compilação foi bem-sucedida
if [ $? -eq 0 ]; then
    echo "Compilação bem-sucedida."

    # Move o PDF gerado para um diretório separado
    mv "$filename.pdf" "output/$filename.pdf"
    echo "PDF salvo em output/$filename.pdf"
else
    echo "Erro durante a compilação."
fi
