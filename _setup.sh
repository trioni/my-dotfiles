#!/bin/bash

# Move files into place
ls -s .vimrc ~/.vimrc
ls -s .tigrc ~/.tigrc
ls -s .ackrc ~/.ackrc

# Increase the key repeat speed
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# key repeat for VSCode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# To enable global key-repeat
# this is helpful if you're using Vim in a PWA like code-server
defaults write -g ApplePressAndHoldEnabled -bool false