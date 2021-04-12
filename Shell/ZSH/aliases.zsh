# Shortcuts
alias ohmyzsh="code ~/.oh-my-zsh"
alias zshconfig="code ~/.zshrc"
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias rlsh="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# Clean and update Brew
alias brewup="brew update && brew outdated; brew upgrade && brew cleanup; brew doctor"

# Faster Time Machine Backup
alias tm-auto="sudo tmutil startbackup --auto; tmutil status"

# Use single thread per website instead of per tab
alias browser="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --process-per-site"

# Remove valet.sock and restart
alias valetrm="rm ~/.config/valet/valet.sock"
alias valetr="valetrm && valet restart"

# Open GitKraken using the current repo directory in the cli and bring it on focus.
alias kraken='open gitkraken://repo/$PWD'

# Working dir
alias dev="cd ~/.projx"
alias sb="cd ~/SocialBrothers"
alias programming="cd ~/Programming"
alias temp="cd ~/.projx/temp"
alias dotfiles="cd $DOTFILES"

alias library="cd $HOME/Library"
alias sites="cd $HOME/Sites"
alias lara="sites && cd laravel/"
alias docs="lara && cd docs/"
alias dev="cd ~/.projx"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
# alias composer="php -d memory_limit=-1 /usr/local/bin/composer"

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
