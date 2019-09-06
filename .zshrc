export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="${HOME}/.oh-my-zsh"
export TERM="xterm-256color"

### brew install kubectx
### brew install kubens
### brew install autojump
### brew install zsh-kubectl-prompt
### git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
### git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
### gcloud install;  gcloud init; gcloud components install kubectl


# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"


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
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  git-flow
  bundler
  brew
  dotenv
  osx
  go
  docker
  composer
  z
  autojump
  vagrant
  zsh-autosuggestions
  kubectl
  kubetail
  tmux
  web-search
)

unsetopt share_history

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

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

autoload -U colors; colors

[[ -f "/usr/local/etc/zsh-kubectl-prompt/kubectl.zsh" ]] &&  source /usr/local/etc/zsh-kubectl-prompt/kubectl.zsh

#POWERLEVEL9K_CUSTOM_KUBECTX="custom_kubectx"
#POWERLEVEL9K_CUSTOM_KUBECTX_BACKGROUND="yellow"
#POWERLEVEL9K_CUSTOM_KUBECTX_FOREGROUND="black"

POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="echo signal: \$(nmcli device wifi | grep yes | awk '{print \$8}')"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="yellow"
POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="red"

POWERLEVEL9K_KUBECONTEXT_BACKGROUND="green"
POWERLEVEL9K_KUBECONTEXT_FOREGROUND="black"

POWERLEVEL9K_CONTEXT_TEMPLATE="%n@`hostname -sf`"
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND="darkgreen"
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND="white"
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="darkgreen"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="blue"
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND="red"
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND="blue"
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND="darkgreen"
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND="white"

POWERLEVEL9K_DIR_HOME_BACKGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="blue"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="blue"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"


if [[ $(which kubectl) =~  "ot found" ]]
then
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir dir_writable vcs)
else
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(newline context kubecontext newline dir dir_writable vcs)
fi


POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"


# Change the git status to red when something isn't committed and pushed
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'

export GOPATH=$HOME
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/micoli/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/micoli/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/micoli/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/micoli/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
eval $(dinghy env)   
