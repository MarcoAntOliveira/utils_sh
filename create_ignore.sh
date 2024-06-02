#!/bin/bash

# Cria um arquivo .gitignore
cat > download_app/.gitignore <<EOF
# Arquivos de resíduos do LaTeX
*.aux
*.bbl
*.blg
*.log
*.out
*.synctex.gz
*.toc

# Ambientes virtuais de Python
venv/
env/
__pycache__/
*.pyc
*.pyo
*.pyd
*.pyz
*.pyzw
.Python

# Outros resíduos comuns
.DS_Store
Thumbs.db
EOF

echo "Arquivo .gitignore criado com sucesso."
