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

# aliases
alias ll='ls -l'
alias la='ls -a'
alias l='ls -lahrt'
alias ema='emacs -nw'
alias vi='vim'

# ERLANG
ERL_HOME="$HOME/local/otp-17.4"

if [ -d "ERL_HOME" ]; then
    export ERL_TOP="$ERL_HOME/lib/erlang"
    extendPATH $ERL_TOP/bin
else
    export ERL_TOP="/usr/lib64/erlang"
fi

# PKGCONFIG
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/lib/pkgconfig"
export LDFLAGS="-L/usr/lib $LDFLAGS"

# GIT
source $HOME/.gitprompt
