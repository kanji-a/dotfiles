#!/bin/bash
set -e

# ディレクトリ名を日本語化
LANG=C xdg-user-dirs-update --force
rm -rf デスクトップ ダウンロード テンプレート 公開 ドキュメント ミュージック ピクチャ ビデオ

# HackGen NF 導入
if ls $HOME/.local/share/fonts/HackGen_NF_* > /dev/null 2>&1
then
  echo "HackGen_NF はインストール済です"
else
  tmpdir=$(mktemp -d)
  curl -sLJo "$tmpdir/HackGen_NF_v2.10.0.zip" https://github.com/yuru7/HackGen/releases/download/v2.10.0/HackGen_NF_v2.10.0.zip
  unzip "$tmpdir/HackGen_NF_v2.10.0.zip" -d "$tmpdir"
  mkdir -p $HOME/.local/share/fonts
  mv "$tmpdir/HackGen_NF_v2.10.0" $HOME/.local/share/fonts
  rm -rf "$tmpdir"
fi

# 外付けドライブマウントポイント作成
sudo mkdir -p /mnt/WDS100T2B0C-EC
sudo mkdir -p /mnt/HD-AC10TW
sudo mkdir -p /mnt/HDCA-U1.0K

# 外付けドライブをfstabに追記
sudo cp /etc/fstab /etc/fstab.bk
if ! grep -q WDS100T2B0C-EC /etc/fstab; then
  echo 'UUID=3db9b828-36f9-4f99-b3cc-583e05c13a4a /mnt/WDS100T2B0C-EC ext4 defaults,nofail 0 0' | sudo tee -a /etc/fstab > /dev/null
fi
if ! grep -q HD-AC10TW /etc/fstab; then
  echo 'UUID=8A2EB49C2EB4832D /mnt/HD-AC10TW ntfs defaults,nofail 0 2' | sudo tee -a /etc/fstab > /dev/null
fi
if ! grep -q HDCA-U1.0K /etc/fstab; then
  echo 'UUID=6EEAA0FD69DC1FD2 /mnt/HDCA-U1.0K ntfs defaults,nofail 0 2' | sudo tee -a /etc/fstab > /dev/null
fi

# brewのncduをsudoから使えるようにする(sudoのsecure_pathに/usr/local/binが含まれるため)
sudo ln -sf "$(brew --prefix)/bin/ncdu" /usr/local/bin/ncdu
