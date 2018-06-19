Setup
=====

There are a couple of steps to this setup; first, install a modern version of vim (and optionally MacVim)...
```bash
brew install macvim
brew linkapps
```
next, install [Fira Code](https://github.com/tonsky/FiraCode), perhaps
via `brew`:
```bash
brew tap homebrew/fonts
brew cask install font-fira-code
```
and then clone this branch of the repo:
```bash
git clone -b 2017 --single-branch git@github.com:jontg/dotvim ~/.vim
pushd ~/.vim/bundle
	git submodule update --init --recursive
	pushd YouCompleteMe
		./install.py
	popd
popd
```
and finally, plug everything together!
```bash
mkdir -p ~/.vim/backup
ln -s ~/.vim/vimrc ~/.vimrc
```
