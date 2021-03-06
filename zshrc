# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="fino" #fino

export CLICOLOR=1

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git rails git-flow sublime autojump zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias ....="cd .. && cd .. && cd .."
alias b2d="boot2docker"
alias b2dinit="\$(boot2docker shellinit)"

alias slime='open -a "/Applications/Sublime Text.app"'
alias l="ls -la"
alias la="ls -a"
alias gitrm="git diff --diff-filter=D --name-only -z | xargs -0 git rm"
alias mysqldb="/Applications/MAMP/Library/bin/mysql"

alias vbox="VBoxManage"
alias rake="noglob rake"
alias mrc="magerun cache:clean"
alias mr:th="magerun dev:template-hints"
alias mr="magerun"
alias can="caniuse"
alias notes="vim ~/notes"
alias encrypt="pbpaste | openssl aes-256-cbc -salt -a -e | base64 -b 0 | pbcopy"
alias decrypt="pbpaste | base64 --decode | openssl aes-256-cbc -salt -a -d | pbcopy"

# fixes from the old class
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# iMac path setup
export PATH=$HOME/bin:$HOME/.bin:$HOME/.npm:$HOME/.rvm/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Applications/MAMP/Library/bin:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:$PATH

php_bin=`grep "php5_module" ~/Library/Application\ Support/appsolute/MAMP\ PRO/httpd.conf | egrep -o "/.*/php\d+(.\d+)*"`
export PATH="$php_bin/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

export NVM_DIR="/Users/jschroeder/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# load local configuration
if [ -f ~/.zshrc_local ]; then
  source ~/.zshrc_local
fi
