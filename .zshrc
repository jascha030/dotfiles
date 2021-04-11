if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export DOTFILES=$HOME/.dotfiles                             # Path to custom .dotfiles
export ZSH=$HOME/.oh-my-zsh                                 # Path to your oh-my-zsh installation.
autoload -Uz compinit && compinit                           # Enable completions
# OMZSH                                                     # Theme settings
POWERLEVEL9K_MODE="awesome-patched"
ZSH_THEME="powerlevel10k/powerlevel10k"
# Minimal                                                   # Theme Settings
export MNML_INSERT_CHAR="$"
export MNML_PROMPT=(mnml_git mnml_keymap)
export MNML_RPROMPT=('mnml_cwd 20')
ZSH_THEME="minimal"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" ) # Randomize themes

# CASE_SENSITIVE="true"                                     # Uncomment to use case-sensitive completion. 
# HYPHEN_INSENSITIVE="true"                                 # Uncomment to use hyphen-insensitive completion. 
# DISABLE_AUTO_UPDATE="true"                                # Uncomment to disable bi-weekly auto-update checks. 
# DISABLE_UPDATE_PROMPT="true"                              # Uncomment to automatically update without prompting. 
# export UPDATE_ZSH_DAYS=13                                 # Uncomment to change how often to auto-update (in days). 
# DISABLE_MAGIC_FUNCTIONS=true                              # Uncomment if pasting URLs and other text is messed up. 
# DISABLE_LS_COLORS="true"                                  # Uncomment to disable colors in ls. 
# DISABLE_AUTO_TITLE="true"                                 # Uncomment to disable auto-setting terminal title. 
# ENABLE_CORRECTION="true"                                  # Uncomment to enable command auto-correction.  
# COMPLETION_WAITING_DOTS="true"                            # Uncomment to display red dots whilst waiting for completion. 
# DISABLE_UNTRACKED_FILES_DIRTY="true"                      # Uncomment if you want to disable marking untracked files makes it much faster

HIST_STAMPS="dd/mm/yyyy"                                    # Date format
ZSH_CUSTOM=$DOTFILES                                        # Add .dotfiles as custom dir

# OMZSH                                                     # Plugins
plugins=(git node nvm composer npm zsh-interactive-cd osx)

source $ZSH/oh-my-zsh.sh

# User config
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8

# EDITOR                                                    # Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
    export EDITOR='code'
fi

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, # run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
  
figlet -Lcw 80 -f speed "Hackermode 030 Initialised"
