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
