#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install PHP extensions with PECL
pecl install xdebug imagick memcached redis swoole

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet beyondcode/expose

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

mkdir $HOME/.projx

mkdir $HOME/.projx/Projects
mkdir $HOME/.projx/Projects/Composer
mkdir $HOME/.projx/Projects/SocialBrothers

mkdir $HOME/.projx/www
mkdir $HOME/.projx/www/SocialBrothers
mkdir $HOME/.projx/www/Personal
mkdir $HOME/.projx/www/Remotes
mkdir $HOME/.projx/www/Sites

# Remove standard dotfiles and Symlink with the ones from the .dotfiles repo
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

rm -rf $HOME/.gitconfig
ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig

rm -rf $HOME/.mackup.cfg 
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
