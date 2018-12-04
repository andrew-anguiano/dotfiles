# Add my local bin
export PATH="$PATH:$HOME/bin"
# Add Yarn global packages
export PATH="$PATH:`yarn global bin`"

# Antigen Start ==========================
source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle jsontools
antigen bundle docker
antigen bundle node
antigen bundle npm
antigen bundle osx
antigen bundle sudo
antigen bundle yarn
antigen bundle robbyrussell/oh-my-zsh plugins/z

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme dracula/zsh dracula

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply

# Antigen End =============================

source ~/.config/zsh/.aliases

# Path to your oh-my-zsh installation.
export ZSH=/Users/aanguiano/.oh-my-zsh
export EDITOR="vim"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# No theme since we're using Pure
ZSH_THEME=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(docker gem gitfast github jira jsontools lol meteor ng node npm nyan osx sudo web-search yarn z)

#source ~/.oh-my-zsh/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

autoload -U promptinit; promptinit
prompt pure

autoload bashcompinit
bashcompinit

###-tns-completion-start-###
if [ -f /Users/aanguiano/.tnsrc ]; then 
    source /Users/aanguiano/.tnsrc 
fi
###-tns-completion-end-###
export PATH="/usr/local/sbin:$PATH"

## Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"


fpath=(/usr/local/share/zsh-completions $fpath)

## Add tmuxinator completion
# source /Users/aanguiano/.shell-config/completion/tmuxinator.zsh

autoload -U compinit && compinit

## iTerm
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# ZSH Syntax highlighting
#source /Users/aanguiano/.stuff/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Stop command bail if glob match failes (fixes ^ usage).
setopt NO_NO_MATCH

