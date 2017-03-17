#! /usr/bin/env bash

# Install brew if it is not already.
which brew > /dev/null 2> /dev/null
if (( $? != 0 )); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Execute the brewfile in this directory.
brew bundle

# Remove outdated versions from the cellar.
brew cleanup