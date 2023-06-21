#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Easily search file contents
brew install ack

# For quickly just between folders
brew install fasd
brew install tree
brew install tig
brew install jq

# Quick look plugins
brew install --cask qlcolorcode
# Plain text files without extension
brew install --cask qlstephen
brew install --cask qlmarkdown
brew install --cask quicklook-json
brew install --cask betterzip
brew install --cask imageoptim

brew tap homebrew/cask-fonts
brew cask install font-fira-code
