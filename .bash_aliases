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

# Vlad / Drupal VM
# ------------------------------------------------------------------------------

# List versions of key dependencies.
alias vm-deps='echo "VirtualBox `VBoxManage --version`"; vagrant --version; ansible --version; vagrant plugin list'
