HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit promptinit
compinit 
promptinit

source ~/.git-prompt.sh

export TERM=xterm-256color
export EDITOR=vim
bindkey -v

setopt nohup

#------ALIASES------#
#tmux
alias tmuxstd=~/Skripts/tmuxstandard.sh

#cd
alias ..='cd ..'
alias ...='cd ../..'

#audio
alias mute='amixer sset Master mute 1>/dev/null'
alias unmute='amixer sset Master unmute 1>/dev/null'

#globals
alias -g L='| less'
alias -g G='| grep'
alias -g M='| more'
alias -g C='| wc -l'
alias -g S='&> /dev/null'
#alias -g GP='| gnuplot'

#pacman
#alias pac='sudo pacman'
alias pacs='sudo pacman -S'
alias pacss='pacman -Ss'
alias pacr='sudo pacman -R'
alias paco='pacman -Qdtq'
alias pacq='pacman -Q'
alias syu='sudo pacman -Syu'

#ls
alias l='ls -l'
alias la='ls -a'
alias ll='ls -al'
alias sl=ls

#utils
alias ka=killall
alias ok='ping -c 5 archlinux.org'

#programs
alias py3=python3
alias py=python
alias py2=python2
alias top=htop
alias _=sudo

#systemctl
alias sctl='sudo systemctl'
#alias sctle='sudo systemctl enable'
#alias sctld='sudo systemctl disable'
#alias sctlis='sudo systemctl is-enabled'

#misc
alias q=quit

#------PROMPTS------#

setopt prompt_subst
setopt transient_rprompt

#vim indicator
vim_ins_mode="[%F{1}I%f]"
vim_cmd_mode="[%F{2}N%f]"
vim_mode=$vim_ins_mode

function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/$vim_cmd_mode}/(main|viins)/$vim_ins_mode}"
  zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
	vim_mode=$vim_ins_mode
}
zle -N zle-line-finish

function TRAPINT() {
	vim_mode=$vim_ins_mode
	return $(( 128 + $1 ))
}

#promptstyle
PROMPT='[%F{2}%*%f][%F{6}%n%f@%m %F{3}%1~%f]%F{2}%#%f ' 
PROMPT2='%F{2}>>%f ' 
RPROMPT='$(__git_ps1 "[%s]")$vim_mode'
RPROMPT2='$vim_mode'
