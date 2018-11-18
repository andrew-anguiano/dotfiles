# If you come from bash you might have to change your $PATH.
# export PATH=/usr/local/sbin:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/aanguiano/.oh-my-zsh
export EDITOR="vim"
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"

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
plugins=(docker gem gitfast github jira jsontools lol meteor ng node npm nyan osx sudo web-search yarn)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

autoload -U promptinit; promptinit
prompt pure

autoload bashcompinit
bashcompinit
source /Users/aanguiano/.stuff/wp-completion.bash

source /Users/aanguiano/.stuff/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zprofile
source ~/.shell-config/aliases

###-tns-completion-start-###
if [ -f /Users/aanguiano/.tnsrc ]; then 
    source /Users/aanguiano/.tnsrc 
fi
###-tns-completion-end-###
export PATH="/usr/local/sbin:$PATH"

## Composer
export PATH="/Users/aanguiano/.composer/vendor/bin:$PATH"

## GCE SDK
export PATH="$HOME/bin/google-cloud-sdk:$PATH"
source /Users/aanguiano/bin/google-cloud-sdk/completion.zsh.inc
source /Users/aanguiano/bin/google-cloud-sdk/path.zsh.inc
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

## Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"


fpath=(/usr/local/share/zsh-completions $fpath)

export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_HOME="/usr/local/share/android-sdk"

## Add tmuxinator completion
source /Users/aanguiano/.shell-config/completion/tmuxinator.zsh

## Add hub completions
fpath=(~/.shell-config/completion $fpath)
autoload -U compinit && compinit

## iTerm
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

## Stop command bail if glob match failes (fixes ^ usage).
setopt NO_NO_MATCH

eval $(thefuck --alias)
