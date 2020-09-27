alias df='df -h'

case "${OSTYPE}" in
	darwin*)
		alias ls='ls -hG'
		alias ll='ls -lhG'
		alias la='ls -lahG'
		;;
	linux*)
		alias ls='ls -hv --color'
		alias ll='ls -lhv --color'
		alias la='ls -alhv --color'
		;;
esac

alias pip='pip3'
alias python='python3'
alias python2='python2.7'

export TESSDATA_PREFIX="/usr/local/Cellar/tesseract/4.0.0/share/tessdata/"


if [ -f $HOME/bin/git-prompt.sh ]; then
	source $HOME/bin/git-prompt.sh
fi
export PS1='\u@\h[\w]$(__git_ps1 " (%s)")'$'\n\$ '

if [ -d $HOME/bin ]; then
	export PATH=$PATH:$HOME/bin
fi

if [ -f $HOME/.bashrc.local ]; then
	source $HOME/.bashrc.local
fi
