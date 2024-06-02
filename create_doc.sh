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

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}

\lstdefinestyle{mystyle}{
    language=HTML, % Use 'HTML' para a linguagem HTML
    basicstyle=\ttfamily\small,
    keywordstyle=\color{blue},
    stringstyle=\color{codepurple},
    commentstyle=\color{blue}\itshape,
    numbers=left,
    numberstyle=\tiny\color{orange},
    breaklines=true,
    showstringspaces=false,
}

\lstdefinestyle{pythonStyle}{
    language=Python,
    basicstyle=\ttfamily\small,
    keywordstyle=\color{blue},
    stringstyle=\color{orange},
    commentstyle=\color{orange}\itshape,
    numbers=left,
    numberstyle=\tiny\color{blue},
    breaklines=true,
    showstringspaces=false,
}

\lstdefinestyle{pythonStyle-on}{
    language=Python,
    basicstyle=\ttfamily\small\color{green},
    keywordstyle=\color{green},
    stringstyle=\color{green},
    commentstyle=\color{green}\itshape,
    numbers=left,
    numberstyle=\tiny\color{green},
    breaklines=true,
    showstringspaces=false,
}

\lstdefinestyle{pythonStyle-off}{
    language=Python,
    basicstyle=\ttfamily\small\color{red},
    keywordstyle=\color{red},
    stringstyle=\color{red},
    commentstyle=\color{red}\itshape,
    numbers=left,
    numberstyle=\tiny\color{red},
    breaklines=true,
    showstringspaces=false,
}


% Define o estilo para HTML
\lstdefinestyle{htmlStyle}{
    language=python,
    basicstyle=\ttfamily\small,
    keywordstyle=\color{blue},
    stringstyle=\color{orange},
    commentstyle=\color{blue}\itshape,
    numbers=left,
    numberstyle=\tiny\color{orange},
    breaklines=true,
    showstringspaces=false,
}

\lstdefinestyle{htmlStyle-on}{
    language=python,
    basicstyle=\ttfamily\small\color{green},
    keywordstyle=\color{green},
    stringstyle=\color{green},
    commentstyle=\color{green}\itshape,
    numbers=left,
    numberstyle=\tiny\color{green},
    breaklines=true,
    showstringspaces=false,
}

\lstdefinestyle{htmlStyle-off}{
    language=python,
    basicstyle=\ttfamily\small\color{red},
    keywordstyle=\color{red},
    stringstyle=\color{red},
    commentstyle=\color{red}\itshape,
    numbers=left,
    numberstyle=\tiny\color{red},
    breaklines=true,
    showstringspaces=false,
}


\lstdefinestyle{cssStyle}{
    language=HTML,
    basicstyle=\ttfamily\small,
    keywordstyle=\color{blue},
    stringstyle=\color{green},
    commentstyle=\color{blue}\itshape,
    numbers=left,
    numberstyle=\tiny\color{green},
    breaklines=true,
    showstringspaces=false,
}

\lstdefinestyle{cssStyle-off}{
    language=HTML,
    basicstyle=\ttfamily\small\color{red},
    keywordstyle=\color{red},
    stringstyle=\color{red},
    commentstyle=\color{red}\itshape,
    numbers=left,
    numberstyle=\tiny\color{red},
    breaklines=true,
    showstringspaces=false,
}

\lstdefinestyle{cssStyle-on}{
    language=HTML,
    basicstyle=\ttfamily\small\color{green},
    keywordstyle=\color{green},
    stringstyle=\color{green},
    commentstyle=\color{green}\itshape,
    numbers=left,
    numberstyle=\tiny\color{green},
    breaklines=true,
    showstringspaces=false,
}

\lstset{style=mystyle}
\title{\textbf{$1}}
\begin{document}
\maketitle

\end{document}
\section{}
\begin{lstlisting}[style=mystyle, title= ] 
\end{lstlisting}
\lstinputlisting[title=aula03.html]{aulas/aula03.html}
"

# Escreve o conteúdo HTML no arquivo

echo "$tex_content" > "$filename"

# Informa ao usuário que o arquivo foi criado
echo "Arquivo '$filename' criado com sucesso."
