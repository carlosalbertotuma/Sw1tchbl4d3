#!/bin/bash

echo "Instalando dependencias do Sw1tchbl4d3 v3.0"
echo "By bl4dsc4n"

install_dir="/usr/local"

install_python_tool() {
    tool_name=$1
    tool_repo=$2

    echo ">>> Instalando $tool_name..."
    sudo rm -rf "$install_dir/$tool_name"
    sudo rm -f "/usr/bin/$tool_name"

    git clone "$tool_repo" "$install_dir/$tool_name"
    cd "$install_dir/$tool_name"

    # XSStrike tem arquivo com nome minusculo
    if [ -f "${tool_name,,}.py" ]; then
        chmod +x "${tool_name,,}.py"
        sudo ln -s "$install_dir/$tool_name/${tool_name,,}.py" "/usr/bin/${tool_name,,}"
    fi

    echo ">>> $tool_name instalado com sucesso."
}

echo ">>> Instalando XSStrike..."
install_python_tool XSStrike https://github.com/s0md3v/XSStrike.git

echo ">>> Instalando Commix..."
install_python_tool commix https://github.com/commixproject/commix.git

echo ">>> Instalando ParamSpider..."
sudo rm -rf "$install_dir/ParamSpider"
sudo rm -f /usr/bin/paramspider

git clone https://github.com/devanshbatham/ParamSpider.git "$install_dir/ParamSpider"
cd "$install_dir/ParamSpider"

python3 -m venv venv
source venv/bin/activate

if [ -f requirements.txt ]; then
    pip install -r requirements.txt
else
    echo "[ERRO] requirements.txt não encontrado!"
fi

chmod +x paramspider.py
sudo ln -s "$install_dir/ParamSpider/paramspider.py" /usr/bin/paramspider

echo ">>> ParamSpider instalado com sucesso."

# rockyou
if [ -f "/usr/share/wordlists/rockyou.txt.gz" ]; then
    sudo gzip -d /usr/share/wordlists/rockyou.txt.gz
fi

echo ">>> Conversão dos scripts para Unix..."
find . -type f -name "*.sh" -exec dos2unix {} \;

echo ">>> Instalando npm / retire..."
sudo apt install npm -y
sudo npm install -g retire
sudo retire

echo ">>> Todas dependências instaladas."
