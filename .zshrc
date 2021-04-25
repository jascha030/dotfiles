# Powerlevel10k insta-prompt, Init Code that may require input go above this block;
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/.antigen/antigen.zsh
source $DOTFILES/.antigenrc

# Export globals
export DOTFILES="$HOME/.dotfiles"

# IDE's
export PSTORM='phpstorm'
export VSCODE='code'
export NVIM='nvim'

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR=$NVIM
else
  export EDITOR=$NVIM
fi

# PyEnv (Python Env)
eval "$(pyenv init -)"

# Aliases
[ -f $DOTFILES/shell/aliases.zsh ] && source $DOTFILES/shell/aliases.zsh

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/.p10k.zsh.
# [[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh

# Paths
[ -f $DOTFILES/shell/path.zsh ] && source $DOTFILES/shell/path.zsh

# figlet -Lcw 140 -f speed "XTRM Hacker Mode 030"
figlet -Lc  -w $(tput cols) -t -f speed "Jassie030 Hackerman Mode"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
