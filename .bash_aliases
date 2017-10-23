# Docker
# ------------------------------------------------------------------------------

alias dc='docker-compose'

# Git
# ------------------------------------------------------------------------------

# List commits since last tag in Markdown list format.
# Credit: http://stackoverflow.com/a/12083016/464066
alias glog='git log `git describe --tags --abbrev=0`..HEAD --pretty=format:"- %h : %s"'

# Vagrant
# ------------------------------------------------------------------------------

alias vag='vagrant'
alias vdest='vagrant destroy'
alias vhalt='vagrant halt'
alias vprov='vagrant provision'
alias vrel='vagrant reload'
alias vres='vagrant resume'
alias vshare='vagrant share'
alias vssh='vagrant ssh'
alias vsus='vagrant suspend'
alias vup='vagrant up'

# List versions of key dependencies.
alias vm-deps='echo "VirtualBox `VBoxManage --version`"; vagrant --version; ansible --version; vagrant plugin list'

# Composer
# ------------------------------------------------------------------------------

alias comreq='composer require --ignore-platform-reqs'
alias comrem='composer remove --ignore-platform-reqs'
alias comi='composer install --ignore-platform-reqs'
alias comu='composer update --ignore-platform-reqs'
alias --ipr='--ignore-platform-reqs'
