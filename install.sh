#!/bin/bash

# Atualizar lista de pacotes e instalar dependências necessárias
sudo apt update
sudo apt install -y software-properties-common

# Adicionar o repositório de Python 3.9 e instalar o Python 3.9
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install -y python3.9 python3.9-venv python3.9-dev

# Verificar a instalação do Python 3.9
python3.9 --version

# Criar e ativar o ambiente virtual
python3.9 -m venv venv
source venv/bin/activate

# Atualizar pip e instalar dependências
pip install --upgrade pip
pip install -r requirements.txt

# Inicia o pre-commit
pre-commit install

echo "Instalação concluída com sucesso!"
