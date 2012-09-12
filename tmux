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

# Activity monitoring
setw -g monitor-activity on
set -g visual-activity on

# Highlight active window
set-window-option -g window-status-current-bg red

# Mouse stuff
setw -g mode-mouse on
setw -g mouse-select-window on
setw -g mouse-select-pane on
setw -g mouse-resize-pane on


# +----------------------------------------------------------------------------+
# | Binds                                                                      |
# +----------------------------------------------------------------------------+
# Bind split
unbind %
#bind | split-window -h
#bind - split-window -v
bind | set default-path $PWD \; split-window -h\; set default-path ~/
bind - set default-path $PWD \; split-window -v\; set default-path ~/

# Move through panes via hjkl
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# Allows us to use C-a a <command> to send commands to a TMUX session inside
# another TMUX session
bind-key a send-prefix


# +----------------------------------------------------------------------------+
# | Status Bar                                                                 |
# +----------------------------------------------------------------------------+
set -g status-bg colour234
set -g window-status-activity-attr bold
set -g pane-border-fg colour245
set -g pane-active-border-fg colour39
set -g message-fg colour16
set -g message-bg colour221
set -g message-attr bold

# Custom status bar
# Powerline symbols: ⮂ ⮃ ⮀ ⮁ ⭤
# Your font must have powerline support for this to work
set -g status-left-length 32
set -g status-right-length 150
set -g status-interval 5

set -g status-right '#[fg=colour245]⮃ %R ⮃ %d %b #[fg=colour254,bg=colour234,nobold]#(rdio-current-track-tmux)⮂#[fg=colour16,bg=colour254,bold] #h '
set -g window-status-format "#[fg=white,bg=colour234] #I #W "
set -g window-status-current-format "#[fg=colour234,bg=colour39]⮀#[fg=colour16,bg=colour39,noreverse,bold] #I ⮁ #W #[fg=colour39,bg=colour234,nobold]⮀"
set -g default-terminal "screen-256color"


# Rather than constraining window size to the maximum size of any client
# connected to the *session*, constrain window size to the maximum size of any
# client connected to *that window*. Much more reasonable.
setw -g aggressive-resize on





# Reference
# ^1: http://mutelight.org/articles/practical-tmux
# ^2: http://blog.hawkhost.com/2010/06/28/tmux-the-terminal-multiplexer/
# ^3: http://blog.hawkhost.com/2010/07/02/tmux-%E2%80%93-the-terminal-multiplexer-part-2/
# ^4: https://github.com/myusuf3/dotfiles/blob/master/tmux
