# foobar2000
alias foobar2000='wine  ~/.wine/drive_c/Program\ Files/foobar2000/foobar2000.exe'
# 競プロ用UTツール
alias oj-test-python='oj t -c "python3 main.py"'
# atcoderライブラリ
export PATH=$PATH:"/usr/local/lib/python3.9/site-packages/atcoder"
# シェルのキー操作をvim化
bindkey -v
# 履歴を使う
export HISTFILE=${HOME}/.zsh_history
# 検索可能な履歴数
export HISTSIZE=1000
# 履歴ファイルに保存される履歴の件数
export SAVEHIST=100000
# 履歴の重複を排除
setopt hist_ignore_all_dups
# 履歴を別タブでも共有
setopt share_history
# pecoでgitのフォルダを選べるようにする
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
# NeoVimをデフォルトエディタにする
export EDITOR=nvim
# asdfを使用する
. $HOME/.asdf/asdf.sh
# Linuxbrewに必要
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# Starship起動
eval "$(starship init zsh)"
# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# zinit setup
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"
# 色々なコマンド補完ができるようになる
zinit light zsh-users/zsh-completions
# completeコマンドを使うために必要
autoload bashcompinit && bashcompinit
# 補完機能compsys有効化
autoload -Uz compinit && compinit
# 履歴やファイル・ディレクトリの補完機能から推測されたコマンドが薄字で出る
zinit light zsh-users/zsh-autosuggestions
# 打ったコマンドにシンタックスハイライトがつく 必ず最後に書くこと
zinit light zsh-users/zsh-syntax-highlighting

