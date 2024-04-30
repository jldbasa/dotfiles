# +----------------------------------------------------------------------------+
# | Setttings                                                                  |
# +----------------------------------------------------------------------------+
# C-b is not acceptable -- Vim uses it
set-option -g prefix C-a
bind-key C-a last-window

# Start numbering at 1
set -g base-index 1

# Allows for faster key repetition
set -s escape-time 0

# Automatically set window title
setw -g automatic-rename

# Set scrollback to 10000 lines
set -g history-limit 10000

# Use vi-mode keys
setw -g mode-keys vi

# copy and paste mode
# tmux 2.5 and up?
bind-key -T copy-mode-vi 'v' send -X begin-selection
bind-key -T copy-mode-vi 'y' send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"

# Update default binding of `Enter` to also use copy-pipe
unbind -T copy-mode-vi Enter
bind-key -T copy-mode-vi Enter send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"

# tmux 2.3 and below
# bind-key -t vi-copy 'v' begin-selection
# bind-key -t vi-copy 'y' copy-selection
# bind-key -t vi-copy 'y' copy-pipe "reattach-to-user-namespace pbcopy"

# # Update default binding of `Enter` to also use copy-pipe
# unbind -t vi-copy Enter
# bind-key -t vi-copy Enter copy-pipe "reattach-to-user-namespace pbcopy"

unbind [
bind Escape copy-mode
unbind p
bind p paste-buffer


# Activity monitoring
setw -g monitor-activity on
set -g visual-activity on

# Mouse stuff
# setw -g mode-mouse on
# setw -g mouse-select-window on
# setw -g mouse-select-pane on
# setw -g mouse-resize-pane on

# resize panes using PREFIX H, J, K, L
bind H resize-pane -L 5
bind J resize-pane -D 5
bind K resize-pane -U 5
bind L resize-pane -R 5

# +----------------------------------------------------------------------------+
# | Binds                                                                      |
# +----------------------------------------------------------------------------+
# Bind split
unbind %
bind | split-window -h
bind - split-window -v
#bind | set default-path $PWD \; split-window -h\; set default-path ~/
#bind - set default-path $PWD \; split-window -v\; set default-path ~/

# Move through panes via hjkl
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# Allows us to use C-a a <command> to send commands to a TMUX session inside
# another TMUX session
bind-key a send-prefix

# Rather than constraining window size to the maximum size of any client
# connected to the *session*, constrain window size to the maximum size of any
# client connected to *that window*. Much more reasonable.
setw -g aggressive-resize on

bind-key -n F2 new-window
bind-key -n F3 previous-window
bind-key -n F4 next-window
bind-key -n F5 split-window -v
bind-key -n F6 split-window -h
bind-key -n F8 command-prompt -I "#W" "rename-window '%%'"
bind-key -n F7 command-prompt "find-window '%%'"
bind-key -n F10 setw synchronize-panes
bind-key -n F11 resize-pane -Z
bind-key -n F12 kill-pane

bind r source-file ~/.tmux.conf \; display "Tmux Reloaded"

# +----------------------------------------------------------------------------+
# | Design                                                                     |
# +----------------------------------------------------------------------------+

# loud or quiet?
set-option -g visual-bell off
set-option -g visual-silence off
set-option -g bell-action none

# https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg
# http://jonasjacek.github.io/colors/
set -g default-terminal "screen-256color"

# Reference
# ^1: http://mutelight.org/articles/practical-tmux
# ^2: http://blog.hawkhost.com/2010/06/28/tmux-the-terminal-multiplexer/
# ^3: http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/
# ^4: https://github.com/myusuf3/dotfiles/blob/master/tmux
# ^5: http://jasonwryan.com/blog/2011/06/07/copy-and-paste-in-tmux/ Copy
# ^6: http://zanshin.net/2013/09/05/my-tmux-configuration/
# & Paste
