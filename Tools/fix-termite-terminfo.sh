#/bin/zsh

ssh $1 -t "wget https://raw.githubusercontent.com/thestinger/termite/master/termite.terminfo && tic -x termite.terminfo"
