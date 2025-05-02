#!/bin/bash

# ディレクトリ名を日本語化
LANG=C xdg-user-dirs-update --force
rm -rf デスクトップ ダウンロード テンプレート 公開 ドキュメント ミュージック ピクチャ ビデオ

# HackGen NF 導入
curl -sLJO https://github.com/yuru7/HackGen/releases/download/v2.10.0/HackGen_NF_v2.10.0.zip
unzip HackGen_NF_v2.10.0.zip
mkdir $HOME/.local/share/fonts
mv HackGen_NF_v2.10.0 $HOME/.local/share/fonts
rm HackGen_NF_v2.10.0.zip

# 外付けドライブマウントポイント作成
sudo mkdir /mnt/WDS100T2B0C-EC
sudo mkdir /mnt/HD-AC10TW
sudo mkdir /mnt/HDCA-U1.0K
