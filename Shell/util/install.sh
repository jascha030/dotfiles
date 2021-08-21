#!/bin/bash

echo "Setting up your Mac..."

DOTFILES="$HOME"/.dotfiles
DOTZSH="$DOTFILES"/zsh

# All dotfiles that are going to be linked in the $HOME directory
declare -a LINK_QUEUE

# General
LINK_QUEUE[".zshrc"]="$DOTFILES/.zshrc"
LINK_QUEUE[".gitconfig"]="$DOTFILES/git/.gitconfig"
LINK_QUEUE[".iterm2_shell_integration"]="$DOTZSH/.iterm2_shell_integration"
LINK_QUEUE[".mackup.cfg"]="$DOTFILES/.dotfiles/.mackup.cfg"

# Zsh extensions
LINK_QUEUE[".p10k.zsh"]="$DOTZSH/p10k.zsh"
LINK_QUEUE[".fzf.zsh"]="$DOTZSH/fzf.zsh"


# Check for our dependencies and install if we don't have any of them
# Oh My Zsh
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# HomeBrew
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# HomeBrew
brew update
brew tap homebrew/bundle
# Install our bundled packages
brew bundle install --file="$DOTFILES/Brewfile"


# PHP, PECL
pecl install xdebug imagick memcached redis swoole
# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet beyondcode/expose
"$HOME"/.composer/vendor/bin/valet install


# Create Project directories
mkdir "$HOME/.workingDir"
mkdir "$HOME/.workingDir/Projects"
mkdir "$HOME/.workingDir/Projects/Socialbrothers"

ln -s "$DOTFILES"/Shell/bin "$HOME"/bin

# Remove standard dotfiles and Symlink with the ones from the .dotfiles repo
for homeKey in "${!LINK_QUEUE[@]}"
do
  rm -rf "$HOME"/"$homeKey";
  ln -s "${LINK_QUEUE[$homeKey]}" "$HOME"/"$homeKey"
done


# Set macOS preferences
# shellcheck disable=SC2039
source .macos
