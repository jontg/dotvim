# Vim dotfiles

This repo was created to provide an online, backed-up public copy of 
my vim setup.  Folks are welcome to copy, share, &c.

## Installation

	git clone git://github.com/jontg/dotvim.git ~/.vim

## Create symlinks

	ln -s ~/.vim/vimrc ~/.vimrc

## Setup Plugins

Switch to the `~/.vim` directory, and fetch submodules:

	cd ~/.vim
	git submodule init
	git submodule update

## Build Command-T

Switch to the `~/.vim/bundle/command-t` and build the module:

	cd ~/.vim/bundle/command-t
        ruby extconf.rb
        make

## Updating Plugins

	cd ~/.vim
	git submodule foreach git pull

# Credits

Inspired by [tauceti][], who just did this...  I do not much use plugins,
but I am starting to getting into [Tim Pope][]'s [Pathogen][].  If you
recognize any code snippets that are not properly accredited, please
ping me.

[tauceti]: https://github.com/tauceti
[tim pope]: https://github.com/tpope
[pathogen]: https://github.com/tpope/vim-pathogen
