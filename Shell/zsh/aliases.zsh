# Ali(J)asses
alias edit="${EDITOR} $1"
alias zshconfig="edit $DOTFILES/.zshrc"
alias e:zshrc="zshconfig"
alias e:aliases="edit $DOTFILES/Shell/zsh/aliases.zsh"
alias e:path="edit $DOTFILES/Shell/zsh/path.zsh"

# Bat instead of cat
alias cat="bat"
alias ogcat="\cat"
alias fpb="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

# Navigation
alias rr="source $HOME/.zshrc"
alias x="exit"
alias q="exit"
alias c="clear"

alias ll="colorls -Ahl --color --group-directories-first"
alias lc='colorls -lA --sd'
alias lr="colorls --tree=5"

alias confdir="cd $HOME/.config"
alias dotfiles="cd $DOTFILES"

# Clean and update Brew
alias brewup="brew update && brew outdated; brew upgrade && brew cleanup; brew doctor"
# Faster Time Machine Backup
alias tm-auto="sudo tmutil startbackup --auto; tmutil status"
# Remove valet.sock and restart.
alias valetrm="rm $HOME/.config/valet/valet.sock"
alias valetr="valetrm && valet restart" # Make a symbolic link in current dir.
alias linkdir="ln -s $PWD/"

# Chrome with just a little bit less RAMpage.
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --process-per-site"
alias browser="chrome"
alias chromi="chrome -incognito"

# Open current dir in...
alias kraken='$(open gitkraken://repo/$PWD)' # Gitkraken
alias pstorm="phpstorm ." # Phpstorm
alias wstorm="webstorm ." # Webstorm

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Working dir
alias dev="cd ${HOME}/.development/Projects"
alias library="cd $HOME/Library"

alias wwwd="cd $HOME/.development/www"
alias remotesites="cd $HOME/.development/www/Remotes"
alias sbsites="cd $HOME/.development/www/socialbrothers"
alias projx="cd ${HOME}/.development/Projects"

# Start composer project start-composerpr
alias cmprj="start-composerpr"

# PHP
alias cc="&& composer "
alias cpsrcl="composer clear-cache"
alias cpsrrm="rm -rf vendor/ composer.lock"
alias cpsrfrup="cpscl cc u"
alias cpsrfri="cpscl cc i"
alias cpsrfresh="comprm && cpsfri"
alias cpsndev="composer install --no-dev"

# Git
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gl="git log --oneline --decorate --color"

alias amend="git add . && git commit --amend --no-edit"
alias commit="git add . && git commit -m"
alias diff="git diff"
alias force="git push --force"
alias nuke="git clean -df && git reset --hard"
alias pop="git stash pop"
alias pull="git pull"
alias push="git push"
alias resolve="git add . && git commit --no-edit"
alias stash="git stash -u"
alias unstage="git restore --staged ."
alias wip="commit wip"

# Suffix Aliases
alias -s php=pstorm
alias -s {.zshrc,zsh,sh,json,yaml,.env}=nvim
alias -s {cs,ts,html}=code

# Templates
alias glbgitig="cat $DOTFILES/.gitignore | pbcopy"
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias cpssh="copyssh"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias ccdir="echo `echo $PWD` | pbcopy"

