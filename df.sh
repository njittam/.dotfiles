#!/bin/bash
if [[ -L $1 ]]; then
	echo "file is a already a symlink";
else
	oldfile=$(readlink -f $1 | sed 's/\/home\/'$USER'\///')
	skeldir=~/.dotfiles/skelhome/$(dirname  $oldfile)
	echo $1
	readlink -f $1
	echo $oldfile
	echo $skeldir
	mkdir -p $skeldir
	mv $1 $skeldir
	ln -s $skeldir/$(basename $1) $1
fi
oldpwd=$(pwd)
cd ~/.dotfiles
git status
cd $oldpwd
