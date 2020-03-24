#!/bin/bash

SCHEMA="io.elementary.terminal.settings"

gsettings set "$SCHEMA" palette '#2b303b:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#c0c5ce:#65737e:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#eff1f5'
gsettings set "$SCHEMA" background '#2b2f3a'
gsettings set "$SCHEMA" foreground '#c0c5ce'
gsettings set "$SCHEMA" cursor-color '#c0c5ce'
gsettings set "$SCHEMA" cursor-shape 'I-Beam'
gsettings set "$SCHEMA" tab-bar-behavior 'Hide When Single Tab'

## elementary OS default properties (uncomment if necessary)
#gsettings set "$SCHEMA" palette '#073642:#dc322f:#859900:#b58900:#268bd2:#ec0048:#2aa198:#94a3a5:#586e75:#cb4b16:#859900:#b58900:#268bd2:#d33682:#2aa198:#6c71c4'
#gsettings set "$SCHEMA" background 'rgba(37, 46, 50, 0.95)'
#gsettings set "$SCHEMA" foreground '#94a3a5'
#gsettings set "$SCHEMA" cursor-color '#839496'
#gsettings set "$SCHEMA" cursor-shape 'Block'
#gsettings set "$SCHEMA" tab-bar-behavior 'Always Show Tabs'

unset SCHEMA
