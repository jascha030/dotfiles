echo `clear`
echo "initialising hacker mode..."
echo `clear`
echo "initialising hacker mode..."
echo `clear`
echo "initialising hacker mode..."

# Powerlevel10k insta-prompt, Init Code that may require input go above this block;
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export DOTFILES="$HOME/.dotfiles"           # Local path to repo
export ZSH="/Users/jascha030/.oh-my-zsh"    # Path to oh-my-zsh

ZSH_THEME=powerlevel10k/powerlevel10k

COMPLETION_WAITING_DOTS="true"          # Display red dots whilst waiting for completion.
HIST_STAMPS="dd/mm/yyyy"                # Change the command execution time.

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# IDEs
export PSTORM='phpstorm'
export VSCODE='code'
export NVIM='nvim'

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='pstorm'
fi

alias pstorm="phpstorm ."

# MOAR SOARCE PLX.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Aliases
[ -f $DOTFILES/ZSH/aliases.zsh ] && source $DOTFILES/ZSH/aliases.zsh
# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

figlet -Lcw 80 -f speed "XTRM HackerMode 030"

export FZF_DEFAULT_OPS="--extended"
