# Powerlevel10k insta-prompt, Init Code that may require input go above this block;
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Antigen
[ -f $HOME/.dotfiles/shell/zsh/antigen.zsh ] && source $HOME/.dotfiles/shell/zsh/antigen.zsh
[ -f $HOME/.dotfiles/.antigenrc ] && source $HOME/.dotfiles/.antigenrc

# Tmux
ZSH_TMUX_AUTOSTART=true

if which tmux 2>&1 >/dev/null; then
   if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
       tmux attach -t hack || tmux new -s hack; exit
   fi
fi

# Directory globals
# Dotfile directories
export DOTFILES="${HOME}/.dotfiles"
export DOTZSH="${DOTFILES}/shell/zsh"

# Project directories
export WORKINGDIR="${HOME}/.workingDir"
export PROJECTS="${WORKINGDIR}/Projects"
export SBPROJECTS="${PROJECTS}/Socialbrothers"

# Editor globals
export PSTORM='phpstorm'
export NVIM='nvim'

export EDITOR=$NVIM


# PyEnv (Python Env)
eval "$(pyenv init -)"


# Aliases & Paths
[ -f $DOTFILES/shell/zsh/aliases.zsh ] && source $DOTFILES/shell/zsh/aliases.zsh
[ -f $DOTFILES/shell/zsh/path.zsh ] && source $DOTFILES/shell/zsh/path.zsh
[ -f $DOTFILES/shell/zsh/custom_functions.zsh ] && source $DOTFILES/shell/custom_functions.zsh

# Linked ZSH files
[[ ! -f $DOTZSH/fzf.zsh ]] || source $HOME/.fzf.zsh
[[ ! -f $DOTZSH/p10k.zsh ]] || source $HOME/.p10k.zsh

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# Output funny msg when done
figlet -Lcw $(tput cols) -f speed "Jassie030 Hackerman Mode"

