# Powerlevel10k insta-prompt, Init Code that may require input go above this block;
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Antigen
source $HOME/.antigen/antigen.zsh
source $HOME/.dotfiles/.antigenrc


# Export globals
export DOTFILES="$HOME/.dotfiles"
export PSTORM='phpstorm'
export VSCODE='code'
export NVIM='nvim'
export EDITOR=$NVIM


# PyEnv (Python Env)
eval "$(pyenv init -)"


# Aliases & Paths
[ -f $DOTFILES/shell/aliases.zsh ] && source $DOTFILES/shell/aliases.zsh
[ -f $DOTFILES/shell/path.zsh ] && source $DOTFILES/shell/path.zsh

source $DOTFILES/.p10k.zsh

# Output funny msg
figlet -Lc  -w $(tput cols) -t -f speed "Jassie030 Hackerman Mode"

