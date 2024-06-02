#!/bin/bash

# Verifica se o usuário passou o nome do arquivo como argumento
if [ -z "$1" ]; then
    echo "Por favor, forneça o nome do arquivo como argumento."
    exit 1
fi

# Define o nome do arquivo a partir do argumento
filename="$1.tex"


# Cria o conteúdo HTML
tex_content="\documentclass[letterpaper]{article}
\usepackage[legalpaper, left=1 cm, right=1cm, top=0.5cm, bottom=0.5cm] {geometry}
\date{} % Remove a exibição da data
\usepackage{xcolor}
\usepackage{listings}
\usepackage{graphicx}
\usepackage{hyperref} % Para criar links
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}


\title{\textbf{$1}}
\begin{document}
\maketitle
\tableofcontents
\newpage

\end{document}
\section{}
\setlength{\parindent}{8pt}
\noindent\rule{\textwidth}{0.4pt}
\subsection{}

"
# Escreve o conteúdo HTML no arquivo

echo "$tex_content" > "$filename"

# Informa ao usuário que o arquivo foi criado
echo "Arquivo '$filename' criado com sucesso."
