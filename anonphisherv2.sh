#!/bin/bash

# Anonphisher 2 - Phishing Toolkit
# c0d3d By @non G00nz

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to display the banner
display_banner() {
    echo -e "${CYAN}╔══════════════════════════════════════════════════════════════╗${NC}"
    echo -e "\${CYAN}║                                                              ║\${NC}"
    echo -e "${CYAN}║${RED}                    ████████╗${NC}${CYAN}    █████╗ ${NC}${YELLOW}██████╗${NC}     ${CYAN}║\${NC}"
    echo -e "${CYAN}║${RED}                    ╚══██╔══╝${NC}${CYAN}   ██╔══██╗${NC}${YELLOW}██╔══██╗${NC}    ${CYAN}║\${NC}"
    echo -e "${CYAN}║${RED}                       ██║${NC}   ${CYAN}   ███████║${NC}${YELLOW}██████╔╝${NC}    ${CYAN}║\${NC}"
    echo -e "${CYAN}║${RED}                       ██║${NC}   ${CYAN}   ██╔══██║${NC}${YELLOW}██╔══██╗${NC}    ${CYAN}║\${NC}"
    echo -e "${CYAN}║${RED}                       ██║${NC}   ${CYAN}   ██║  ██║${NC}${YELLOW}██║  ██║${NC}    ${CYAN}║\${NC}"
    echo -e "${CYAN}║${RED}                       ╚═╝${NC}   ${CYAN}   ╚═╝  ╚═╝${NC}${YELLOW}╚═╝  ╚═╝${NC}    ${CYAN}║\${NC}"
    echo -e "\${CYAN}║                                                              ║\${NC}"
    echo -e "${CYAN}║${YELLOW}                    Anonphisher 2${NC}                     ${CYAN}║\${NC}"
    echo -e "${CYAN}║${GREEN}                  c0d3d By @non G00nz${NC}                 ${CYAN}║\${NC}"
    echo -e "\${CYAN}║                                                              ║\${NC}"
    echo -e "${CYAN}╚══════════════════════════════════════════════════════════════╝${NC}"
}

# Function to check if a tool is installed
is_tool_installed() {
    tool=\$1
    if [ -d "\$HOME/Anonphisher2/\$tool" ]; then
        echo -e "${GREEN}[+] $tool is installed\${NC}"
        return 0
    else
        echo -e "${RED}[-] $tool is not installed\${NC}"
        return 1
    fi
}

# Function to install Zphisher
install_zphisher() {
    echo -e "${BLUE}[*] Installing Zphisher...${NC}"
    mkdir -p \$HOME/Anonphisher2
    cd \$HOME/Anonphisher2
    git clone https://github.com/htr-tech/zphisher.git
    cd zphisher
    chmod +x zphisher.sh
    echo -e "\${GREEN}[+] Zphisher installed successfully\${NC}"
    cd ../..
}

# Function to install BlackEye
install_blackeye() {
    echo -e "${BLUE}[*] Installing BlackEye...${NC}"
    mkdir -p \$HOME/Anonphisher2
    cd \$HOME/Anonphisher2
    git clone https://github.com/An0nUD4Y/blackeye.git
    cd blackeye
    chmod +x blackeye.sh
    echo -e "\${GREEN}[+] BlackEye installed successfully\${NC}"
    cd ../..
}

# Function to install Wifiphisher
install_wifiphisher() {
    echo -e "${BLUE}[*] Installing Wifiphisher...${NC}"
    mkdir -p \$HOME/Anonphisher2
    cd \$HOME/Anonphisher2
    git clone https://github.com/wifiphisher/wifiphisher.git
    cd wifiphisher
    sudo pip install -r requirements.txt
    python setup.py install
    echo -e "\${GREEN}[+] Wifiphisher installed successfully\${NC}"
    cd ../..
}

# Function to install King Phisher
install_kingphisher() {
    echo -e "${BLUE}[*] Installing King Phisher...${NC}"
    mkdir -p \$HOME/Anonphisher2
    cd \$HOME/Anonphisher2
    git clone https://github.com/rsmusllp/king-phisher.git
    cd king-phisher
    sudo pip install -r requirements.txt
    sudo python setup.py install
    echo -e "\${GREEN}[+] King Phisher installed successfully\${NC}"
    cd ../..
}

# Function to install Modlishka
install_modlishka() {
    echo -e "${BLUE}[*] Installing Modlishka...${NC}"
    mkdir -p \$HOME/Anonphisher2
    cd \$HOME/Anonphisher2
    git clone https://github.com/drk1wi/Modlishka.git
    cd Modlishka
    go get -u github.com/drk1wi/modlishka
    echo -e "\${GREEN}[+] Modlishka installed successfully\${NC}"
    cd ../..
}

# Function to install HiddenEye
install_hiddeneye() {
    echo -e "${BLUE}[*] Installing HiddenEye...${NC}"
    mkdir -p \$HOME/Anonphisher2
    cd \$HOME/Anonphisher2
    git clone https://github.com/DarkSecDevelopers/HiddenEye.git
    cd HiddenEye
    pip3 install -r requirements.txt
    chmod +x HiddenEye.py
    echo -e "\${GREEN}[+] HiddenEye installed successfully\${NC}"
    cd ../..
}

# Function to install Catphish
install_catphish() {
    echo -e "${BLUE}[*] Installing Catphish...${NC}"
    mkdir -p \$HOME/Anonphisher2
    cd \$HOME/Anonphisher2
    git clone https://github.com/hakluke/catphish.git
    cd catphish
    pip3 install -r requirements.txt
    chmod +x catphish.py
    echo -e "\${GREEN}[+] Catphish installed successfully\${NC}"
    cd ../..
}

# Function to run a tool
run_tool() {
    tool=\$1
    case \$tool in
        1)
            if is_tool_installed "zphisher"; then
                cd \$HOME/Anonphisher2/zphisher
                ./zphisher.sh
            else
                echo -e "\${RED}[-] Zphisher is not installed. Install it first.\${NC}"
            fi
            ;;
        2)
            if is_tool_installed "blackeye"; then
                cd \$HOME/Anonphisher2/blackeye
                ./blackeye.sh
            else
                echo -e "\${RED}[-] BlackEye is not installed. Install it first.\${NC}"
            fi
            ;;
        3)
            if is_tool_installed "wifiphisher"; then
                cd \$HOME/Anonphisher2/wifiphisher
                sudo ./wifiphisher
            else
                echo -e "\${RED}[-] Wifiphisher is not installed. Install it first.\${NC}"
            fi
            ;;
        4)
            if is_tool_installed "king-phisher"; then
                cd \$HOME/Anonphisher2/king-phisher
                king-phisher
            else
                echo -e "\${RED}[-] King Phisher is not installed. Install it first.\${NC}"
            fi
            ;;
        5)
            if is_tool_installed "Modlishka"; then
                cd \$HOME/Anonphisher2/Modlishka
                ./modlishka
            else
                echo -e "\${RED}[-] Modlishka is not installed. Install it first.\${NC}"
            fi
            ;;
        6)
            if is_tool_installed "HiddenEye"; then
                cd \$HOME/Anonphisher2/HiddenEye
                python3 HiddenEye.py
            else
                echo -e "\${RED}[-] HiddenEye is not installed. Install it first.\${NC}"
            fi
            ;;
        7)
            if is_tool_installed "catphish"; then
                cd \$HOME/Anonphisher2/catphish
                python3 catphish.py
            else
                echo -e "\${RED}[-] Catphish is not installed. Install it first.\${NC}"
            fi
            ;;
    esac
}
