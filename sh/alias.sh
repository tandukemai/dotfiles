#!/usr/bin/bash

# ======================================================================================
#
#         FILE:  function.sh
#       AUTHOR:  Tan Duc Mai
#        EMAIL:  tan.duc.work@gmail.com
#      COMPANY:  University of South Australia (UniSA)
#        USAGE:  Source this file in .bashrc
#  DESCRIPTION:  User-defined aliases
#      CREATED:  Mar 27, 2022
#
# ======================================================================================

# """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
#                    _    _     ___    _    ____  _____ ____
#                   / \  | |   |_ _|  / \  / ___|| ____/ ___|
#                  / _ \ | |    | |  / _ \ \___ \|  _| \___ \
#                 / ___ \| |___ | | / ___ \ ___) | |___ ___) |
#                /_/   \_\_____|___/_/   \_\____/|_____|____/
#
# """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi


# Add an "alert" alias for long running commands.
# Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# ls / exa aliases
alias ls='exa'
alias l='ls'
alias ll='exa -alhF'
alias la='ll --git'
alias tree='exa --tree --long'

# other aliases
alias ..='cd ..'
alias ....='cd ../..'
alias cd..='cd ..'
alias cd....='cd ../..'
alias e='vim -o'
alias E='vim -o'
alias vi='vim -u NONE' # Default vim
alias cc='cd /mnt/c/Users/TanDucMai/OneDrive\ -\ University\ of\ South\ Australia &&\
  clear && ls'
alias W='cd /mnt/c/Users/TanDucMai/OneDrive\ -\ \
University\ of\ South\ Australia/Desktop/myportfolio && clear && ls -l'
alias V='cd ~/.vim && clear && ls -al'
alias F='cd ~/.files && clear && ls -al'
alias view='wslview'  # View a file in another app
alias open='xdg-open' # Open a file with default app, or view a file within terminal'
alias opne='xdg-open' # In case I mistype the word 'open'
youtube='https:\/\/youtube.com'
facebook='https:\/\/facebook.com'
alias bashrc='vim ~/.files/bash/bashrc'
alias vimrc='vim ~/.vim/vimrc'
alias gitconfig='vim ~/.files/git/gitconfig'
alias func='vim ~/.files/sh/function.sh'
alias installer='vim ~/.files/sh/installer'
alias py='python3'
alias ex='exit'
alias cl='clear'
alias gsh='git-sh'
alias gitsh='git-sh'
alias gst='git st'
alias gts='git st'
alias gcc='git cc'
alias gcm='git cm'
alias gca='git ca'
alias gdiff='gd'
alias gadd='ga'
alias gcl='git clone'
alias gco='git checkout'
alias gpsuh='gpush'
alias gpuhs='gpush'
alias ConvertREADME.mdToPDF='clear && printf "Wait for README.md to be converted\
 ...\n--------------------\n" && cp README.md ../pandoc_md_to_pdf/ && cd\
 ../pandoc_md_to_pdf && ./md2pdf_syn_bullet.sh README.md sample_output.pdf\
 && mv sample_output.pdf ../ && rm README.md && cd ..'
alias githubtrending='starcli -S en -L table -l python -r 5 -d today'
alias sqlformat='sqlformat -s --reindent --keywords upper --identifiers lower'
alias pipinstall='python3 -m pip install --user --upgrade'
alias ddate='date +"%R - %a, %B %d, %Y"'
alias dday='date +"%d-%m-%Y"'
alias toilet='toilet -t -f mono12 --filter border:metal -F metal'
alias toiletgay='toilet --filter border:gay -F gay'
alias alllowercase="rename 'y/A-Z/a-z/' *"
alias alluppercase="rename 'y/a-z/A-Z/' *"
alias zzz='zoxide'
alias updatedb='sudo updatedb'
alias hugodeploy='hugo --cleanDestinationDir --gc --minify'

# Example: cat vimrc | CountChars
alias CountChars='sed "s/\(.\)/\n\1/g" | sort | uniq -c | sort -gr | column'
