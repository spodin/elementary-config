# Troubleshooting

## Eclipse IDE

### Fix Startup

Add to `eclipse.ini` (before `--launcher.appendVmargs`):

```
--launcher.GTK_version
2
```

### Create Desktop Entry

```
[Desktop Entry]
Type=Application
Name=Eclipse
Icon=eclipse
Exec=/home/user/eclipse/eclipse
Comment=Eclipse IDE
Categories=Development;IDE;
Terminal=false
StartupWMClass=Eclipse
```

## Missing Icons on Wingpanel

Add `env XDG_CURRENT_DESKTOP=Unity` to `Exec` property in `/usr/share/applications/*.desktop` file.

## Fix Functional Keys Usage Inside Terminal (e.g. `F10`)

`echo 'gtk-menu-bar-accel=""' >> ~/.config/gtk-3.0/settings.ini`
