# locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# useful functions
ex (){
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

open (){
  filename=$1
  filetype=${filename##*.}
  echo $filetype
  if [[ $filetype == 'pdf' ]]; then
    okular $filename
  fi
}

# alias
alias ls='ls --group-directories-first --color=auto'
alias ll='ls -lFh --group-directories-first --color=auto'
alias la='ls -lFha --group-directories-first --color=auto'
alias llt='ls -ltrh'
alias lat='ls -ltrha'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cp='cp -i'
alias rm='rm -i'
alias vi='emacsclient -t'
alias emacs='emacsclient -c'
alias calc='speedcrunch &'
alias pantex="pandoc --template=$HOME/github/dotfile/template/pandoc.tex --pdf-engine=xelatex"

