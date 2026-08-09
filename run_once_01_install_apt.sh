#!/bin/bash

# xsel は brew ではなく必ず apt で入れること。
# VSCode などデスクトップランチャー経由で起動するプロセス(vscode-neovim の
# 内部nvimなど)は ~/.zshrc の `brew shellenv` を経由しないため PATH に
# linuxbrew (/home/linuxbrew/.linuxbrew/bin) が含まれず、brew版xselだと
# クリップボード連携(:set clipboard+=unnamed)が "xsel is not executable" で
# 壊れる。apt版は /usr/bin/xsel に入りどのプロセスからも解決できる。
sudo apt install -y \
  build-essential \
  unzip \
  vlc \
  nautilus-dropbox \
  mcomix \
  xsel

