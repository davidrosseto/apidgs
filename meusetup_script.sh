#!/bin/bash

sudo apt update
sudo apt upgrade -y

# Baixa o script do GitHub
curl -sSL https://raw.githubusercontent.com/davidrosseto/SetupOrion/main/SetupOrion -o SetupOrion

# Verifica se o download foi bem-sucedido
if [ $? -eq 0 ]; then
    # Executa o script baixado
    chmod +x SetupOrion
    ./SetupOrion
else
    echo "Falha ao baixar o script SetupOrion"
fi

sudo apt update
sudo apt upgrade -y

# Remova o script baixado, se desejar
# rm SetupOrion

