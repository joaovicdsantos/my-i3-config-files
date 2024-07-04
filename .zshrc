# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="spaceship"
SPACESHIP_GIT_STATUS_UNTRACKED=" ⁉ unt"
SPACESHIP_GIT_STATUS_ADDED=" + add"
SPACESHIP_GIT_STATUS_MODIFIED=" ‼ mod"
SPACESHIP_GIT_STATUS_RENAMED=" ✏ ren"
SPACESHIP_GIT_STATUS_DELETED=" ✖ del"
SPACESHIP_GIT_STATUS_STASHED=" ◳ stash"
SPACESHIP_USER_SHOW=always
SPACECHIP_PROMPT_ASYNC=false

# Update automatically without asking
zstyle ':omz:update' mode auto

plugins=(
    git
    colorize
    zsh-autosuggestions
    zsh-syntax-highlighting
    dotenv
)

source $ZSH/oh-my-zsh.sh

# User configuration

# ls alias
alias l='ls -lh'
alias ll='ls -lah'
alias la='ls -A'
alias lm='ls -m'
alias lr='ls -R'
alias lg='ls -l --group-directories-first'

# git alias
alias gd='git diff'
alias gcl='git clone --depth 1'
alias gi='git init'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias gp='git push origin'
alias gs='git status'
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gfgp="git fetch && git pull"

# Little useless
alias letsfocus!="play -r48000 -c2 -n synth -1 pinknoise .1 80"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='nvim' # <3
export VISUAL='nvim'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin

# Add binaries directories to path
export PATH=$PATH:~/go/bin
export PATH=$PATH:~/.local/bin
export XDEB_PKGROOT=${HOME}/.config/xdeb

# wal
(cat ~/.cache/wal/sequences &)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Shred alias
alias rmm="shred -z -n 2 -u"

# Beautifull greetings
pfetch

