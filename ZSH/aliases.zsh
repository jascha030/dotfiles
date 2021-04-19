# Ali(J)asses
alias edit="${EDITOR} $1"
alias zshconfig="nvim $DOTFILES/"
alias ohmyzsh="nvim $HOME/.oh-my-zsh"
alias rlsh="source $HOME/.zshrc"
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias cpssh="copyssh"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"

alias c="clear"
alias ll="/usr/local/opt/coreutils/libexec/gnubin/ls -AhlFo --color --group-directories-first"

alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

# Clean and update Brew
alias brewup="brew update && brew outdated; brew upgrade && brew cleanup; brew doctor"

# Faster Time Machine Backup
alias tm-auto="sudo tmutil startbackup --auto; tmutil status"

# Remove valet.sock and restart.
alias valetrm="rm $HOME/.config/valet/valet.sock"
alias valetr="valetrm && valet restart"

# Make a symbolic link in current dir.
alias linkdir="ln -s $PWD/"

alias browser="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --args --process-per-site"

alias chrome="browser"
alias chromi="chrome -incognito"

# Open current dir in GitKraken,
# 'open' is a necessity, but also read as a cmd, So it kept po(o)ppin' free finder windows into existence.
# It's prob. just me being, what's in F1 called, a Daniel Retiardo, but that's why the cmd is enclosed in `$()`.
alias kraken='$(open gitkraken://repo/$PWD)'

# Navigation
function cwpd() {
	emulate -L zsh
	ll
}

# Working dir
alias dev="cd ~/.projx"

alias sb="cd ~/SocialBrothers"
alias programming="cd ~/Programming"

alias temp="cd ~/.projx/temp"
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias wwwd="cd $HOME/.projx/www"
alias sbsites="cd $HOME/.projx/www/socialbrothers"

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

# bulk association
alias -s {.zshrc,zsh,sh,json,yaml,.env}=nvim
alias -s {cs,ts,html}=code


# Templates
alias glbgitig="cat /Users/jascha030/.dotfiles/.gitignore | pbcopy"

