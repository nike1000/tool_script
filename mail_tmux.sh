#!/bin/sh

SESSION0='0'
SESSION1='1'
HOSTNAME=`echo "$HOST" | awk -F '.' '{print $1}'`

tmux -2 new-session -d -s $SESSION0
tmux -2 new-session -d -s $SESSION1

tmux rename-window -t $SESSION0:0 $HOSTNAME
tmux new-window -t $SESSION0:1 -n 'csmailer' 'ssh csmailer.cs.nctu.edu.tw'
tmux new-window -t $SESSION0:2 -n 'csmail1' 'ssh csmail1.cs.nctu.edu.tw'
tmux new-window -t $SESSION0:3 -n 'csmail2' 'ssh csmail2.cs.nctu.edu.tw'
tmux new-window -t $SESSION0:4 -n 'csmail3' 'ssh csmail3.cs.nctu.edu.tw'
tmux new-window -t $SESSION0:5 -n 'csmwproxy' 'ssh csmwproxy.cs.nctu.edu.tw'
tmux new-window -t $SESSION0:6 -n 'coredb1' 'ssh coredb1.cs.nctu.edu.tw'
tmux new-window -t $SESSION0:7 -n 'coredb2' 'ssh coredb2.cs.nctu.edu.tw'
tmux new-window -t $SESSION0:8 -n 'tcsmailer' 'ssh tcsmailer.cs.nctu.edu.tw'

tmux rename-window -t $SESSION1:0 $HOSTNAME
tmux new-window -t $SESSION1:1 -n 'csmailgate' 'ssh csmailgate.cs.nctu.edu.tw'
tmux new-window -t $SESSION1:2 -n 'csmx1' 'ssh csmx1.cs.nctu.edu.tw'
tmux new-window -t $SESSION1:3 -n 'csmx3' 'ssh csmx3.cs.nctu.edu.tw'
tmux new-window -t $SESSION1:4 -n 'tcsmx' 'ssh tcsmx.cs.nctu.edu.tw'

tmux ls

