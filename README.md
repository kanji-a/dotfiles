# README

chezmoi で管理する

```sh
apt update && \
apt install -y curl git zsh && \
chsh -s $(which zsh) && \
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply "kanji-a"
```
