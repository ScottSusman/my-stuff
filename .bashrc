#export PS1="\u:\w/ $ "
export PS1="\[\e[36;1m\]\h: \[\e[32;1m\]\w$ \[\e[0m\]"

alias ll="ls -lAG"
alias mkdir="mkdir -pv"
alias dir="printf $'\n--- This isn't Windows ---\n\n'; ll"
alias path='echo -e ${PATH//:/\\n}'

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

mcd () {
    mkdir -p $1
    cd $1
}

cddir () {
    cd $1
    ll
}
