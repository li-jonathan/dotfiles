#!/bin/sh

echo "Starting new Macbook setup..."

# Install Oh my Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# For M1 macs
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
echo "Installing Brewfile..."
brew tap homebrew/bundle
brew bundle --file ./Brewfile

# Check versions
echo "node --version: $(node --version)"
echo "npm --version: $(npm --version)"


echo  "Setup done"
