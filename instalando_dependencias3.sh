#!/bin/bash

# Define o diretório de instalação
install_dir="/usr/local"

# Função para instalar e configurar uma ferramenta Python
install_python_tool() {
    tool_name=$1
    tool_repo=$2
    
    echo "Baixando o repositório $tool_name..."
    git clone "$tool_repo" "$install_dir/$tool_name"
    cd "$install_dir/$tool_name"

    echo "Configurando o acesso direto ao comando $tool_name..."
    chmod +x "$tool_name.py"
    sudo ln -s "$install_dir/$tool_name/$tool_name.py" /usr/bin/"$tool_name"

    echo "$tool_name foi instalado e configurado com sucesso."
}

echo "Verificando e instalando ferramentas..."

# Verifica e instala o XSStrike
if ! command -v xsstrike &>/dev/null; then
    install_python_tool XSStrike https://github.com/s0md3v/XSStrike.git
else
    echo "XSStrike já está instalado e configurado."
fi

# Verifica e instala o Commix
if ! command -v commix &>/dev/null; then
    install_python_tool commix https://github.com/commixproject/commix.git
else
    echo "Commix já está instalado e configurado."
fi

# Verifica e instala o ParamSpider
if ! command -v paramspider &>/dev/null; then
    echo "Baixando e instalando ParamSpider..."
    git clone https://github.com/devanshbatham/ParamSpider.git "$install_dir/ParamSpider"
    cd "$install_dir/ParamSpider"

    echo "Criando ambiente virtual e instalando dependências..."
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt

    echo "Configurando o acesso direto ao comando paramspider..."
    chmod +x paramspider.py
    sudo ln -s "$install_dir/ParamSpider/paramspider.py" /usr/bin/paramspider

    echo "ParamSpider foi instalado e configurado com sucesso."
else
    echo "ParamSpider já está instalado e configurado."
fi

echo "Verificação e instalação concluídas."
