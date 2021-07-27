# Powerlevel10k insta-prompt, Init Code that may require input go above this block;
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antigen
[ -f $HOME/.dotfiles/shell/zsh/antigen.zsh ] && source $HOME/.dotfiles/shell/zsh/antigen.zsh
[ -f $HOME/.dotfiles/.antigenrc ] && source $HOME/.dotfiles/.antigenrc

eval "$(fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install)"

#------------------------------------------------------ Tmux -------------------------------------------------------- #

ZSH_TMUX_AUTOSTART=true

if which tmux 2>&1 >/dev/null; then
   if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
       tmux attach -t main || tmux new -s main; exit
   fi
fi


#--------------------------------------------------- Globals -------------------------------------------------------- #

export DOTFILES="${HOME}/.dotfiles"
export DOTZSH="${DOTFILES}/shell/zsh"

# Project directories
export WORKINGDIR="${HOME}/.workingDir"
export PROJECTS="${WORKINGDIR}/Projects"
export SBPROJECTS="${PROJECTS}/Socialbrothers"

# Brewfile
export HOMEBREW_BUNDLE_FILE="${DOTFILES}/Brewfile"

# Editor globals
export PSTORM='phpstorm'
export NVIM='nvim'

export EDITOR=$NVIM


#----------------------------------------------- Sources & Paths -----------------------------------------------------#

[[ ! -f $DOTFILES/aliases.zsh ]] || source $DOTFILES/aliases.zsh
[[ ! -f $DOTFILES/path.zsh ]] || source $DOTFILES/path.zsh
[[ ! -f $DOTFILES/shell/zsh/custom_functions.zsh ]] || source $DOTFILES/shell/custom_functions.zsh

# Linked ZSH files
[[ ! -f $DOTFILES/p10k.zsh ]] || source $HOME/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# PyEnv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

# Output funny msg when done
figlet -Lcw $(tput cols) -f speed "Hackerman Mode 030"

eval "$(fnm env)"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true
