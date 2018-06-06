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
# Deprecated in Ansible 2.8.
# TODO: What's the proper way of doing this now?
# export ANSIBLE_HOSTS=$HOME/Dropbox/Ansible/hosts

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
. "/usr/local/opt/nvm/nvm.sh"
