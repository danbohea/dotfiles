# Prompt
export PS1=" \w $ "

# Include .profile
if [ -f ~/.profile ]
then
  source ~/.profile
fi

# Include .bash_aliases
if [ -f ~/.bash_aliases ]
then
  source ~/.bash_aliases
fi

# Homebrew requirements
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Create Homebrew cask app symlinks in /Applications rather than ~/Applications.
# This will soon become default behaviour.
# TODO: Check if this is still needed.
export HOMEBREW_CASK_OPTS="--appdir=/Applications";

# Ansible
export ANSIBLE_INVENTORY=$HOME/Dropbox/Ansible/inventory

# rbenv requirements
if [ -d "$HOME/.rbenv" ] ; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi

# Bash completion via Homebrew
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Autocompletion for itermocil
complete -W "$(itermocil --list)" itermocil

# nvm
export NVM_DIR="$HOME/.nvm"
# Load nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# Load nvm bash completion
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"