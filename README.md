# Jascha's Dotfiles

Forked from the very useful, [driesvints/dotfiles](https://github.com/driesvints/dotfiles). If you're not familiar I suggest you go check it out quickly, (together with the links provided in his README).

### Pre-re-install

- Did you commit and push any changes/branches to your git repositories?
- Did you remember to save all important documents from non-iCloud directories?
- Did you save all of your work from apps which aren't synced through iCloud?
- Did you remember to export important data from your local database?
- Did you update [mackup](https://github.com/lra/mackup) to the latest version and ran `mackup backup`?

1. Clone this repo to `~/.dotfiles`
2. Run `~/.dotfiles/scripts/fresh.sh` to start the installation
3. After mackup is synced with your cloud storage, restore preferences by running `mackup restore`
4. Restart your computer to finalize the process

Your Mac is now ready to use!

> Note: you can use a different location than `~/.dotfiles` if you want. Just make sure you also update the reference in the [`.zshrc`](./.zshrc#L2) file.

Go through the [`.macos`](./.macos) file and adjust the settings to your liking. You can find much more settings at [the original script by Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) and [Kevin Suttle's macOS Defaults project](https://github.com/kevinSuttle/MacOS-Defaults).

Check out the [`Brewfile`](Shell/Brewfile) file and adjust the apps you want to install for your machine. Use [their search page](https://caskroom.github.io/search) to check if the app you want to install is available.

Check out the [`aliases.zsh`](Shell/ZSH/aliases.zsh) file and add your own aliases. If you need to tweak your `$PATH` check out the [`path.zsh`](Shell/ZSH/path.zsh) file. These files get loaded in because the `$ZSH_CUSTOM` setting points to the `.dotfiles` directory. You can adjust the [`.zshrc`](./.zshrc) file to your liking to tweak your Oh My Zsh setup. More info about how to customize Oh My Zsh can be found [here](https://github.com/robbyrussell/oh-my-zsh/wiki/Customization).

When installing these dotfiles for the first time you'll need to backup all of your settings with Mackup. Install Mackup and backup your settings with the commands below. Your settings will be synced to iCloud so you can use them to sync between computers and reinstall them when reinstalling your Mac. If you want to save your settings to a different directory or different storage than iCloud, [checkout the documentation](https://github.com/lra/mackup/blob/master/doc/README.md#storage). Also make sure your `.zshrc` file is symlinked from your dotfiles repo to your home directory. 

```zsh
brew install mackup
mackup backup
```
