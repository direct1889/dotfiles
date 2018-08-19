#!/bin/bash

DotDirectory="${HOME}/dotfiles"
Excludes=(".git" ".gitignore" ".config" ".vim" ".bash")
# TODO : don't make link to directories, recursively

# ln : make link
# -s : make symbolic link (as distinct from hard link)
# -n : if path of dest is symbolic link, replace it (must use with -f)
# -f : if dest file has already exist, replace forcibly
# -v : display detail of processing

for f in .??*
do
	if ! $(echo ${Excludes[@]} | grep -q "$f") ; then
		ln -snfv ${DotDirectory}/${f} ${HOME}/${f}
	fi
done

cp -r ${DotDirectory}/.config ${HOME}
cp -r ${DotDirectory}/bin ${HOME}

# ln -snfv ${DotDirectory}/.vim ${HOME}/.config/nvim
ln -snfv ${DotDirectory}/.vim ${HOME}

cd ${DotDirectory}/.vim
for f in .??*
do
	if ! $(echo ${Excludes[@]} | grep -q "$f") ; then
		ln -snfv ${DotDirectory}/.vim/${f} ${HOME}/${f}
	fi
done


cd ${DotDirectory}/.bash
for f in .??*
do
	if ! $(echo ${Excludes[@]} | grep -q "$f") ; then
		ln -snfv ${DotDirectory}/.bash/${f} ${HOME}/${f}
	fi
done

