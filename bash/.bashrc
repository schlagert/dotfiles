# .bashrc

function extendPATH {
  if ! echo $PATH | grep -qs "$1" ; then
      export PATH=$1:$PATH
  fi
}

# source global definitions
[[ -f /etc/bashrc ]] && . /etc/bashrc

# add local bin directory to path
# make doesn't always like the '~/blabla' notation
[[ -d $HOME/bin ]] && extendPATH $HOME/bin
[[ -d $HOME/.local/bin ]] && extendPATH $HOME/.local/bin

# nix
[[ -e ~/.nix-profile/etc/profile.d/nix.sh ]] && . ~/.nix-profile/etc/profile.d/nix.sh

# aliases
alias ll='ls -l'
alias la='ls -a'
alias l='ls -lahrt'
alias ema='emacs -nw'
alias vi='vim'
alias rm='rm -I'

# ERLANG
export ERL_TOP="$HOME/.local/otp-23.3/lib/erlang"

if [ -d "$ERL_TOP" ]; then
    extendPATH $ERL_TOP/bin
else
    export ERL_TOP="/usr/lib64/erlang"
fi

# PKGCONFIG
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/lib/pkgconfig"
export LDFLAGS="-L/usr/lib $LDFLAGS"

# GIT
source $HOME/.gitprompt
