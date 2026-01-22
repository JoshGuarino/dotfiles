#!/bin/bash

# Download and extract asdf
wget https://github.com/asdf-vm/asdf/releases/download/v0.18.0/asdf-v0.18.0-linux-amd64.tar.gz
mkdir -p ~/.asdf/bin
tar -xzf asdf-v0.18.0-linux-amd64.tar.gz -C ~/.asdf/bin
rm asdf-v0.18.0-linux-amd64.tar.gz

# Configure for ZSH
echo -e '\nexport PATH="$HOME/.asdf/bin:$PATH"' >> ~/.zshrc
echo -e 'export PATH="$HOME/.asdf/shims:$PATH"' >> ~/.zshrc
