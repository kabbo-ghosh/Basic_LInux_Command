# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# split panes using | and -
# split panes using | and -
unbind %
bind = split-window -h
unbind '"'
bind , split-window -v

bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D

bind r source-file ~/.tmux.conf

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on

# resize the window 
bind l resize-pane -R 5 
bind h resize-pane -L 5 
bind j resize-pane -D 5  
bind k resize-pane -U 5 
