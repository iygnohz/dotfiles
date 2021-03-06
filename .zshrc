# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# Use GNU command replace Mac command.
export PATH="$(/usr/local/bin/brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export PATH="$PATH:~/Projects/flutter/bin"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

## Alias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"

# Shortcuts
alias em="emacs -nw "
alias sz="source $HOME/.zshrc"
alias d="cd $HOME/Dropbox/ && clear"
alias dl="cd $HOME/Downloads/ && clear"
alias dt="cd ~/Desktop"
alias p="cd ~/Projects/ && clear"
alias t="cd ~/Projects/tests && clear"
alias e='emacsclient -t'
alias ec='emacsclient -c'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
    export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
    colorflag="-G"
    export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
fi
# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -laF ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup;'

# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/zhongyi/.sdkman"
[[ -s "/Users/zhongyi/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/zhongyi/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

export CI_INFRA_OPT_GIT_AUTH_TOKEN=6WxQGVT_Z5s4XDK4enot
export PATH=/Users/zhongyi/Library/Android/sdk/platform-tools:$PATH
export VISUAL=vim
export EDITOR="$VISUAL"

export PATH=~/.pyenv/bin:$PATH
export PYENV_ROOT=~/.pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# added by Anaconda3 5.3.1 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/zhongyi/Projects/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/Users/zhongyi/Projects/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/zhongyi/Projects/anaconda3/etc/profile.d/conda.sh"
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/Users/zhongyi/Projects/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda init <<<

[[ -s "/Users/zhongyi/.gvm/scripts/gvm" ]] && source "/Users/zhongyi/.gvm/scripts/gvm"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export CLOUDSDK_PYTHON=$(which python2)
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/zhongyi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/zhongyi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/zhongyi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/zhongyi/google-cloud-sdk/completion.zsh.inc'; fi
