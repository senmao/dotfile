# ---------------------------------
# Funcitons
# ---------------------------------
cdl() { cd "$@" && ls; }
cdir() { cd $(dirs -l "$@"); }
slash() { for x in $*; do echo ${x//\\/\/}; done }
cdw() { x=${1//\\/\/}; cd /media/sf_${x:0:1}${x:2}; }
cdwp() { x=${1//\\/\/}; echo /media/sf_${x:0:1}${x:2}; }
fp() { readlink -f "$@"; }

