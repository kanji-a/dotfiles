#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias foobar2000='wine  ~/.wine/drive_c/Program\ Files/foobar2000/foobar2000.exe'
alias oj-test-python='oj t -c "python3 main.py"'
bindkey -v
export EDITOR='vim'
export PATH=$PATH:"/usr/local/lib/python3.9/site-packages/atcoder"
# setopt hist_ignore_all_dups
# setopt share_history
. $HOME/.asdf/asdf.sh

# peco
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

