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

# Git
alias glog='git log --pretty=format:"%h %s" --graph'
alias gtag='git log --tags --simplify-by-decoration --pretty="format:%ai %d"'



# ---------------------------------
# Funcitons
# ---------------------------------
fpath() { readlink -f "$@"|xcopy; }
fpath2() { readlink -f "$@"; }

cdl() { cd "$@" && ls; }
cdir() { cd $(dirs -l "$@"); }
slash() { for x in $*; do echo ${x//\\/\/}; done }

