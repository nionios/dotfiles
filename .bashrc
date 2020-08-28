#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Avoid duplicates
HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

alias ls='lsd' #alias for lsd
alias lock='~/.config/genmon/Lock.sh' #alias for locking pc
alias light='sudo ~/scripts/bright_change.sh' #alias for brightness change
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles_git_backup/ --work-tree=$HOME' #easily manage dotfiles
alias logoff='killall i3' #alias for logging out
alias untar='tar -zxvf' #extract tar file to current directory quickly 
alias dots='cd /home/dennis/.config/' #quickly tweak things
alias vim='nvim' #replacing vim with nvim
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"' #making ranger dump you in the directory you exit from!

#PS1='[\u@\h \W]\$ '
#PS1='[\u@\h \W]\$ 'i

#making a function to display git branch on PS1 
git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\[\033[32m\]╭─\[\033[00m\]⏵ \u \[\033[33m\]\$(git_branch)\[\033[00m\] \e[34;1m\w\e[0m\n\[\033[32m\]╰──⏵\$ \[\033[00m\]"

export EDITOR=nvim

export PF_INFO="os kernel uptime pkgs memory"

#antialias fonts in java apps
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on'

#exporting apache poi and apache commons for java
export CLASSPATH=/usr/share/poi-4.1.2/poi-4.1.2.jar:/usr/share/poi-4.1.2/poi-ooxml-schemas-4.1.2.jar:/usr/share/poi-4.1.2/poi-ooxml-4.1.2.jar:/usr/share/poi-4.1.2/ooxml-lib/curvesapi-1.06.jar:/usr/share/poi-4.1.2/ooxml-lib/xmlbeans-3.1.0.jar:/usr/local/Apache/commons-collections4-4.4/commons-collections4-4.4.jar:/usr/local/Apache/commons-io-2.7/commons-io-2.7.jar:/usr/local/Apache/commons-compress-1.20/commons-compress-1.20.jar

#exporting apache home dir
export APACHE_HOME=/usr/local/Apache


/home/dennis/scripts/bashinfo/bashinfo.sh
