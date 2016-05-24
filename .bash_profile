# Nicer prompt
export PS1="[] \w $ "

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
export HOMEBREW_CASK_OPTS="--appdir=/Applications";

# rbenv requirements
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Include Android SDK (used in flashing ROMs etc)
if [ -d "$HOME/Development/android-sdk-macosx/platform-tools" ] ; then
  export PATH="$HOME/Development/android-sdk-macosx/platform-tools:$PATH"
fi

# Ansible
export ANSIBLE_HOSTS=$HOME/Dropbox/Ansible/hosts
