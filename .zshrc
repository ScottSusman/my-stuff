#export PS1="\u:\w/ $ "
#export PS1="\[\e[36;1m\]\m: \[\e[32;1m\]\w$ \[\e[0m\]"\
export PROMPT="%F{cyan}%n%f[%F{cyan}%*%f]%F{cyan} %f%F{cyan}%~%f%B%F{white}: %f%b"
#export JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME=~/Library/Java/JavaVirtualMachines/corretto-1.8.0_302/Contents/Home/
export GOLF_APP_HOME=~/git/android

path+=('/Users/susmanscott/Library/Android/sdk/ndk/22.1.7171670/')

alias ll="ls -lAG"
alias mkdir="mkdir -pv"
alias dir="printf $'\n--- This isn't Windows ---\n\n'; ll"
#alias get="echo -e 'I think you mean git.'"
alias path='echo -e ${PATH//:/\\n}'
alias chrome="open -a 'Google Chrome'"

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

chmod -R go-w '/usr/local/share/zsh'
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

mcd () {
    mkdir -p $1
    cd $1
}

cdl () {
    cd $1
    ll
}

