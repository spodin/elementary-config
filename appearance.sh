#!/bin/bash

## Install and apply `Paper Icons Theme` (https://snwh.org/paper)
sudo add-apt-repository ppa:snwh/pulp -y
sudo apt-get update
sudo apt-get install paper-icon-theme -y
gsettings set org.gnome.desktop.interface icon-theme 'Paper'

## Unzip extra icons images
sudo unzip themes/extra-icons.zip -d ~/Icons

## Unzip and set GTK+ theme
sudo unzip themes/osx-like-theme.zip -d /usr/share/themes/OSX-like
gsettings set org.gnome.desktop.interface gtk-theme 'OSX-like'

## Change window control layout
gsettings set org.pantheon.desktop.gala.appearance button-layout 'close,minimize,maximize'

## Disable category switch for `Applications` menu
gsettings set org.pantheon.desktop.slingshot show-category-filter false

## Unzip and change system default fonts
sudo unzip fonts/sf-font-otf.zip -d /usr/share/fonts/opentype/sf
sudo fc-cache -fv
gsettings set org.gnome.desktop.interface font-name 'SF Pro Display 10'
gsettings set org.gnome.desktop.interface document-font-name 'SF Pro Text 10'
gsettings set org.gnome.desktop.interface monospace-font-name 'SF Mono Regular 10'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'SF Pro Display 10'

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

### Replace Double Commander Configuration
yes | cp -rf apps/doublecmd.xml ~/.config/doublecmd

### Set `nicedark` as Midnight Commander Theme (themes are available in /usr/share/mc/skins/)
sed -i 's/skin=default/skin=nicedark/g' ~/.config/mc/ini
