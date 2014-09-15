#!/bin/bash

SESSION=$USER

tmux -2 new-session -d -s $SESSION
tmux new-window -t $SESSION:1 -n 'SurfCaptain'
tmux split-window -h
tmux select-pane -t 0
tmux send-keys "./loopWithSelfUpdate.sh" C-m
tmux select-pane -t 1
tmux send-keys "./loop.sh" C-m