#!/bin/bash 
tmux kill-session -t 'dev'

tmux new-session -d -s 'dev' -n 'Sensors'
tmux send-keys -t 0  C-z 'glances' Enter

tmux new-window -n 'Proxy'
tmux split-window -v 
#tmux split-window -h
#tmux select-layout '8df5,189x45,0,0[190x3,0,0{94x3,0,0,0,95x3,95,0,2},190x42,0,4,1]'
#tmux send-keys -t 0 C-z 'vpn' Enter
tmux send-keys -t 1 C-z 'k proxy' Enter
tmux send-keys -t 2 C-z 'gosaagie' Enter

tmux new-window -n 'Git'
tmux split-window -v
tmux send-keys -t 0 C-z 'gosaagie && ./product' Enter
tmux send-keys -t 1 C-z 'gosaagie && ./product' Enter

tmux attach-session -t 'dev'
