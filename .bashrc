# To use nix, and its installs
#. /Users/oliver/.nix-profile/etc/profile.d/nix.sh

# Prompt
export PS1="\h:\W \u\$ "

# Local bin
export PATH=~/bin:/usr/local/bin:/Library/TeX/texbin:$PATH

# Aliases
alias ls='ls -GFph'
alias ll='ls -l'
alias la='ls -la'
alias poly='rlwrap poly'
alias uni='cd ~/Google\ Drive/Cambridge/'
alias cst='cd ~/Google\ Drive/Cambridge/CST_II'

# Git Aliases
alias gco='git checkout'
alias gcm='git commit -am'
alias gpu='git push'

# Export vars
export EDITOR=nvim

# opam configuration
test -r ~/.opam/opam-init/init.sh && . ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
