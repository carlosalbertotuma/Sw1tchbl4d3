#!/bin/bash

# Função para verificar e instalar uma ferramenta Go via git
check_install_go_tool() {
    tool_name=$1
    tool_repo=$2
    
    if ! command -v "$tool_name" &>/dev/null; then
        echo "Instalando $tool_name..."
        go install -v "$tool_repo"@"latest" || echo "Falha ao instalar $tool_name"
		#copia
		if command -v "$tool_name" &>/dev/null; then
            sudo cp ~/go/bin/$tool_name /usr/bin/
        fi
    else
        echo "$tool_name OK"
    fi
}

echo "Verificando e instalando ferramentas..."

# Verificação e instalação das ferramentas via Go
check_install_go_tool subfinder github.com/projectdiscovery/subfinder/v2/cmd/subfinder
check_install_go_tool httpx github.com/projectdiscovery/httpx
check_install_go_tool gau github.com/lc/gau
check_install_go_tool gauplus github.com/bp0lr/gauplus
check_install_go_tool nuclei github.com/projectdiscovery/nuclei
check_install_go_tool dalfox github.com/hahwul/dalfox
check_install_go_tool qsreplace github.com/tomnomnom/qsreplace@latest

# Adicione outras ferramentas aqui, seguindo o mesmo padrão

# Instalação do Findomain
if ! command -v findomain &>/dev/null; then
    echo "Instalando Findomain..."
    curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
    unzip findomain-linux.zip
    chmod +x findomain
    sudo mv findomain /usr/bin/findomain
else
    echo "Findomain OK"
fi

echo "Verificação e instalação concluídas."
