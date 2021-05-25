# Powerlevel10k insta-prompt, Init Code that may require input go above this block;
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antigen
[ -f $HOME/.dotfiles/shell/antigen.zsh ] && source $HOME/.dotfiles/shell/antigen.zsh
[ -f $HOME/.dotfiles/.antigenrc ] && source $HOME/.dotfiles/.antigenrc

# Tmux
ZSH_TMUX_AUTOSTART=true

if which tmux 2>&1 >/dev/null; then
   if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
       tmux attach -t hack || tmux new -s hack; exit
   fi
fi

# Export globals
export DOTFILES="${HOME}/.dotfiles"
export PSTORM='phpstorm'
export VSCODE='code'
export NVIM='nvim'
export EDITOR=$NVIM

# PyEnv (Python Env)
eval "$(pyenv init -)"

# Nvim


# Aliases & Paths
[ -f $DOTFILES/shell/aliases.zsh ] && source $DOTFILES/shell/aliases.zsh
[ -f $DOTFILES/shell/path.zsh ] && source $DOTFILES/shell/path.zsh
[ -f $DOTFILES/shell/custom_functions.zsh ] && source $DOTFILES/shell/custom_functions.zsh
[ -f $DOTFILES/.p10k.zsh ] && source $DOTFILES/.p10k.zsh
[ -f $DOTFILES/.fzf.zsh ] && source $DOTFILES/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Output funny msg
figlet -Lcw $(tput cols) -f speed "Jassie030 Hackerman Mode"

