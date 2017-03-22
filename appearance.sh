#!/bin/bash

## Install and apply `Paper Icons Theme` (https://snwh.org/paper)
sudo add-apt-repository ppa:snwh/pulp -y
sudo apt-get update
sudo apt-get install paper-icon-theme -y
gsettings set org.gnome.desktop.interface icon-theme 'Paper'

## Change window control layout
gsettings set org.pantheon.desktop.gala.appearance button-layout 'close,minimize,maximize'

## Unzip and set GTK+ theme
sudo unzip themes/osx-like-theme.zip -d /usr/share/themes/OSX-like
gsettings set org.gnome.desktop.interface gtk-theme 'OSX-like'

## Disable category switch for `Applications` menu
gsettings set org.pantheon.desktop.slingshot show-category-filter false

## Unzip and change system default fonts
sudo unzip fonts/sf-font-otf.zip -d /usr/share/fonts/opentype/sf
gsettings set org.gnome.desktop.interface font-name 'SF UI Display 9'
gsettings set org.gnome.desktop.interface document-font-name 'SF UI  Text 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'SF Mono Extra-Condensed 10'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'SF UI Display Medium 9'

## Set up window keyboard shortcuts
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Primary><Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Primary><Super>Down']"
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Primary><Super>F11']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Control><Super>Left']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Control><Super>Right']"

## Set up custom keyboard shortcuts
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', '/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/']"

### `lxtask` Shortcut
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "lxtask"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "lxtask"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Primary>Escape"

### `screenshot-tool` Shortcut
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name "screenshot-tool"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command "screenshot-tool"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding "Print"

### `pantheon-files` Shortcut
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name "pantheon-files"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command "pantheon-files"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding "<Super>e"