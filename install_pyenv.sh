#!/bin/bash

# Function to check if pyenv is already installed
check_pyenv_installed() {
    if command -v pyenv >/dev/null 2>&1; then
        echo "Pyenv is already installed."
        exit 0
    fi
}

# Check if pyenv is installed
check_pyenv_installed

# Install required packages
sudo apt update
sudo apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git

# Download and run the Pyenv installation script
curl https://pyenv.run | bash

# Add Pyenv to the shell's environment
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# Reload shell configuration
source ~/.bashrc

echo "Pyenv installation and setup completed!"
