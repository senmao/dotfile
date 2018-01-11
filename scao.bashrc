# ---------------------------------
# Alias
# ---------------------------------
if [ "$(uname)" == "Darwin" ]; then
    alias xcopy="tr -d '\n'|pbcopy"
    alias xpaste='pbpase'
#elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
else
    alias xcopy="tr -d '\n'|xclip -selection clipboard"
    alias xpaste='xclip -selection clipboard -o'
fi


alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'

alias mkdir='mkdir -p -v'
alias pxml='xmllint --format'




# ---------------------------------
# Funcitons
# ---------------------------------
fpath() { readlink -f "$@"| tee >(xcopy) >&1; }
fpath2() { readlink -f "$@"; }

cdl() { cd "$@" && ls; }
cdir() { cd $(dirs -l "$@"); }
slash() { for x in $*; do echo ${x//\\/\/}; done }

