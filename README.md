# README

chezmoi で管理する

```sh
apt update && \
apt install -y curl git zsh && \
chsh -s $(which zsh) && \
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply "kanji-a"
```

## neovimについて

### dein

```bash
mkdir -p ~/.cache/dein
cd ~/.cache/dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
```
