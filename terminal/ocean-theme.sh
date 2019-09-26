#!/bin/bash

## Set up colors, cursor color and shape2
gsettings set io.elementary.terminal.settings palette '#2b303b:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#c0c5ce:#65737e:#bf616a:#a3be8c:#ebcb8b:#8fa1b3:#b48ead:#96b5b4:#eff1f5'
gsettings set io.elementary.terminal.settings background '#2b2f3a'
gsettings set io.elementary.terminal.settings foreground '#c0c5ce'
gsettings set io.elementary.terminal.settings cursor-color '#c0c5ce'
gsettings set io.elementary.terminal.settings cursor-shape 'I-Beam'
gsettings set io.elementary.terminal.settings tab-bar-behavior 'Hide When Single Tab'

## Elementary OS default properties (uncomment if necessary)
#gsettings set io.elementary.terminal.settings palette '#073642:#dc322f:#859900:#b58900:#268bd2:#ec0048:#2aa198:#94a3a5:#586e75:#cb4b16:#859900:#b58900:#268bd2:#d33682:#2aa198:#6c71c4'
#gsettings set io.elementary.terminal.settings background 'rgba(37, 46, 50, 0.95)'
#gsettings set io.elementary.terminal.settings foreground '#94a3a5'
#gsettings set io.elementary.terminal.settings cursor-color '#839496'
#gsettings set io.elementary.terminal.settings cursor-shape 'Block'
#gsettings set io.elementary.terminal.settings tab-bar-behavior 'Always Show Tabs'
