#!/bin/bash

## Set up colors, cursor color and shape
gsettings set org.pantheon.terminal.settings palette '#2b2f3b:#bf616a:#a3be8c:#edd686:#8fa1b3:#b48ead:#96b5b4:#a3a4b5:#65737e:#bf616a:#a3be8c:#edd686:#8fa1b3:#b48ead:#96b5b4:#eff1f5'
gsettings set org.pantheon.terminal.settings background '#2b2f3b'
gsettings set org.pantheon.terminal.settings foreground '#a3a4b5'
gsettings set org.pantheon.terminal.settings cursor-color '#a3a4b5'
gsettings set org.pantheon.terminal.settings cursor-shape 'I-Beam'
gsettings set org.pantheon.terminal.settings tab-bar-behavior 'Hide When Single Tab'

## Elementary OS default properties (uncomment if necessary)
#gsettings set org.pantheon.terminal.settings palette '#073642:#dc322f:#859900:#b58900:#268bd2:#ec0048:#2aa198:#94a3a5:#586e75:#cb4b16:#859900:#b58900:#268bd2:#d33682:#2aa198:#6c71c4'
#gsettings set org.pantheon.terminal.settings background 'rgba(37,46,50,0.95)'
#gsettings set org.pantheon.terminal.settings foreground '#94a3a5'
#gsettings set org.pantheon.terminal.settings cursor-color '#839496'
#gsettings set org.pantheon.terminal.settings cursor-shape 'Block'
#gsettings set org.pantheon.terminal.settings tab-bar-behavior 'Always Show Tabs'

## Fix functional keys usage inside Terminal (e.g. `F10`)
echo 'gtk-menu-bar-accel=""' >> ~/.config/gtk-3.0/settings.ini
