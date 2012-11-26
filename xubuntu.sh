# remap capslock key to control
/usr/bin/setxkbmap -option "ctrl:nocaps"

# load ICC profile
xcalib -d :0 -s 0 ~/.local/share/icc/hpprobook6555b.icc
