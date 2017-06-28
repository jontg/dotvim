Setup
=====

There are a couple of steps to this setup; first, install [Fira Code](https://github.com/tonsky/FiraCode), perhaps
via `brew`:
```bash
brew cask install font-fira-code
```
and then clone this branch of the repo:
```bash
git clone -b 2017 --single-branch git@github.com:jontg/dotvim ~/.vim
```
and finally, plug everything together!
```bash
ln -s ~/.vim/vimrc ~/.vimrc
```
