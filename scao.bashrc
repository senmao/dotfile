# ---------------------------------
# copy and paste
# ---------------------------------
if [ "$(uname)" == "Darwin" ]; then
    alias xcopy="tr -d '\n'|pbcopy"
    alias xpaste='pbpase'
#elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
else
    alias xcopy="tr -d '\n'|xclip -selection clipboard"
    alias xpaste='xclip -selection clipboard -o'
fi


# ---------------------------------
# term color (TMUX)
# ---------------------------------
if ! { [ "$TERM" = "screen" ] && [ -n "$TMUX" ]; } then
    export TERM=screen-256color 
fi


# ---------------------------------
# navigation
# ---------------------------------
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

alias mkdir='mkdir -p -v'


# ---------------------------------
# file search
# ---------------------------------
# find newest file
alias latest="find -type f -print0 | xargs -0 stat --format '%Y :%y %n' | sort -n | cut -d: -f2-"
# du also including the hidden folder
alias ddu="du -sch .[!.]* * |sort -hr"
alias absfind='find $(pwd -P)'


# ---------------------------------
# python
# ---------------------------------
alias pjson="python -m json.tool"
alias pypath='echo $PYTHONPATH'
addpypath() { export PYTHONPATH="$@":$PYTHONPATH;pypath; }


# xml
alias pxml='xmllint --format'


# Git
alias glog='git log --pretty=format:"%h %s" --graph'
alias gtag='git log --tags --simplify-by-decoration --pretty="format:%ai %d"'

# start vim in none plugin mode
alias vimf="vim -u NONE"

# copy/cut/paste like in file manager
#
CLIPFCACHE="${HOME}/.clipf.path"
yf() { readlink -f "$@" | tee >${CLIPFCACHE} >&1; }
alias yfp='cat ${CLIPFCACHE}'
alias cpf='cp -ar $(cat ${CLIPFCACHE})'
alias mvf='mv -n $(cat ${CLIPFCACHE})'


asm() { as --32 -o $1.o $1; ld -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -o ${1/.s/} -lc $1.o; rm $1.o;}

# ---------------------------------
# Funcitons
# ---------------------------------
fpath() { readlink -f "$@"| tee >(xcopy) >&1; }
fpath2() { readlink -f "$@"; }

cdl() { cd "$@" && ls; }
cdir() { cd $(dirs -l "$@"); }
slash() { for x in $*; do echo ${x//\\/\/}; done }


# ------------------
# docker
# ------------------
alias docker="sudo docker"
docker-run () { docker run --rm -it -v /home/scao:/home/scao -v /data:/home/scao/shares/disk  $1 bash; }
alias docker-clean='docker rmi $(docker images -f dangling=true -q)'

