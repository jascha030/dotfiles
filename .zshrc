# Powerlevel10k insta-prompt, Init Code that may require input go above this block;
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export DOTFILES="$HOME/.dotfiles"           # Local path to repo
export ZSH="/Users/jascha030/.oh-my-zsh"    # Path to oh-my-zsh

DEFAULT_USER="$USER"
ZSH_THEME=powerlevel10k/powerlevel10k

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(history)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root line)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

COMPLETION_WAITING_DOTS="true"          # Display red dots whilst waiting for completion.
HIST_STAMPS="dd/mm/yyyy"                # Change the command execution time.

# OH MY ZSH! Plugins
plugins=(
	brew
	git 
	zsh-autosuggestions
	osx
	safe-paste
	tmux
	dotenv
	node
	bundler
	npm
	yarn
	history-substring-search
)

source $ZSH/oh-my-zsh.sh

# Exports
export FZF_DEFAULT_OPS="--extended"

# IDE'S
export PSTORM='phpstorm'
export VSCODE='code'
export NVIM='nvim'

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR=$NVIM
fi


# Nvm (Node version manager)
#

# PyEnv (Python Env)
eval "$(pyenv init -)"

if command -v brew >/dev/null 2>&1; then
  # Load rupa's z if installed
  [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi


# P10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# Aliases
[ -f $DOTFILES/ZSH/aliases.zsh ] && source $DOTFILES/ZSH/aliases.zsh
# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# To customize prompt, run `p10k configure` or edit ~/.dotfiles/.p10k.zsh.
[[ ! -f ~/.dotfiles/.p10k.zsh ]] || source ~/.dotfiles/.p10k.zsh
# Paths
[ -f $DOTFILES/ZSH/path.zsh ] && source $DOTFILES/ZSH/path.zsh

# figlet -Lcw 140 -f speed "XTRM Hacker Mode 030"
figlet -Lc  -w $(tput cols) -t -f speed "Jassie030 Hackerman Mode"
