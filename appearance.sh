#!/bin/bash

## Install and apply `Paper Icons Theme` (https://snwh.org/paper)
sudo add-apt-repository ppa:snwh/pulp -y && sudo apt-get install paper-icon-theme -y
gsettings set org.gnome.desktop.interface icon-theme 'Paper'

## Change window control layout
gsettings set org.pantheon.desktop.gala.appearance button-layout 'close,minimize,maximize'
gsettings set org.gnome.desktop.wm.preferences button-layout 'close,minimize,maximize'

## Change system default fonts
gsettings set org.gnome.desktop.interface font-name 'SF Pro Text 9'
gsettings set org.gnome.desktop.interface document-font-name 'SF Pro Text 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'Menlo for Powerline 10'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'SF Pro Text 9'

## TIP
## For getting names of specific keyboard buttons:
##   - sudo apt-get install xbindkeys
##   - sudo xbindkeys -k

## Set up window keyboard shortcuts
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Primary><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Primary><Super>Down']"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Primary><Super>F11']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Control><Super>Left']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Control><Super>Right']"

## Disable Switch Group (default value: ['<Super>Above_Tab', '<Alt>Above_Tab'])
gsettings set org.gnome.desktop.wm.keybindings switch-group []

## Set up custom keyboard shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/']"

### `lxtask` Shortcut
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "lxtask"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "lxtask"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Primary>Escape"

### `screenshot-tool` Shortcut
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name "io.elementary.screenshot-tool"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command "io.elementary.screenshot-tool"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding "Print"

### `pantheon-files` Shortcut
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name "io.elementary.files"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command "io.elementary.files"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding "<Super>e"

### Suspend with Ctrl+Alt+Delete
gsettings set org.gnome.settings-daemon.plugins.media-keys logout ''

gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ name "systemctl suspend -i"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ command "systemctl suspend -i"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ binding "<Primary><Alt>Delete"
