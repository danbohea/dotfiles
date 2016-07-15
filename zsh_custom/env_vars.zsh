# Homebrew requirements
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Create Homebrew cask app symlinks in /Applications rather than ~/Applications.
# This will soon become default behaviour.
export HOMEBREW_CASK_OPTS="--appdir=/Applications";

# Ansible
export ANSIBLE_HOSTS=$HOME/Dropbox/Ansible/hosts

# Include Android SDK (used in flashing ROMs etc)
if [ -d "$HOME/Development/android-sdk-macosx/platform-tools" ] ; then
  export PATH="$HOME/Development/android-sdk-macosx/platform-tools:$PATH"
fi

# rbenv requirements
if [ -d "$HOME/.rbenv" ] ; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi
