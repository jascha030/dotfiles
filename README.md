Jascha030's .dotfiles
==========================

My dotfiles organised for easy & quick setup of a working environment on new machine's.

This repo was originally forked from [driesvints/dotfiles](https://github.com/driesvints/dotfiles), If you're not
familiar I suggest you go check it out quickly, (together with the links provided in his README).

## Getting started (MacOS)

"One freshly squeezed Mac install, coming up!"

### Pre-installation checklist

* Did you commit and push any changes/branches to your git repositories?
* Did you remember to save all important documents from non-iCloud directories?
* Did you save all of your work from apps which aren't synced through iCloud?
* Did you remember to export important data from your local database?
* Did you update mackup to the latest version and ran mackup backup?

> No I'm not your nan, but if you are like me, you probably forgot to check these things now didn't you?

### Installation

* Clone this repo in a directory named `$HOME/.dotfiles`
* Run the installation by executing the script `$HOME/.dotfiles/shell/util/install.sh`
* After mackup is synced with your cloud storage, restore preferences by running `mackup restore`
* Restart your computer to finalize the process
* Be very satisfied about yourself, even though, you haven't done s***. :")

Your Mac is now f-f-fresh, and ready for use, without headaches.

### Customization

#### MacOS settings

Go through the .macos file and adjust the settings to your liking. You can find much more settings at the original
script by Mathias Bynens and Kevin Suttle's macOS Defaults project.

#### HomeBrew

Check out the `Brewfile` file and adjust the apps you want to install for your machine. Use their search page to check
if the app you want to install is available.

#### Aliases, Paths & Oh My ZSH

Check out the `/zsh/aliases.zsh` file and add your own aliases. If you need to tweak the contents of your `$PATH`
check out the `/zsh/path.zsh` file. You can adjust the `.zshrc` file to your liking to tweak your zsh and Oh My
Zsh setup. More info about how to customize Oh My Zsh can be found [here](https://github.com/ohmyzsh/ohmyzsh).

#### Mackup

When installing these dotfiles for the first time you'll need to backup all of your settings with Mackup.
Install `Mackup` (already included in `Brewfile`) and backup your settings with the commands below. 

```shell
brew install mackup
mackup backup
```

Your settings will be synced to iCloud so you can use them to sync between computers and reinstall them when reinstalling your Mac. If you
want to save your settings to a different directory or different storage than iCloud, checkout
the [Mackup documentation](https://github.com/lra/mackup).
