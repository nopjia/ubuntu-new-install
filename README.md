# New Ubuntu Install

Ubuntu 22.04

## Install Additional Drivers

Install Nvidia proprietary drivers.

If unselectable, run the following:

```
sudo ubuntu-drivers install
```

## Settings

- Appearance > Dark
- Displays > Night Light > ON
- Mouse & Touchpad > Touchpad > Natural Scrolling > OFF
- Power > When the Power Button is pressed
- Keyboard Shortcuts > Home folder > "Super+E"
- Nautilus > Hamburger Menu > Show Hidden Files
- Additional Drivers > Install proprietary drivers

## Install Software

Some software should already be installed by bash script

Others

- https://zoom.us/download
- https://www.syntevo.com/smartgit/
  - copy UI config files

```sh
cp smartgit/* ~/.config/smartgit/21.2/
```

## GNOME Tweak Tool and Extensions

Required software should already be installed by bash script

Settings

- General > Suspend when laptop lid is closed > OFF
- Keyboard & Mouse > Acceleration Profile > Adaptive
- Keyboard & Mouse > Middle Click Paste > OFF
- Top Bar > Battery Percentage > ON
- Top Bar > Weekday > ON

Extensions

- https://extensions.gnome.org/extension/19/user-themes/
  - Appearance > Shell > Yaru-dark
- https://extensions.gnome.org/extension/1160/dash-to-panel/
  - About > Import from file...
- https://extensions.gnome.org/extension/1723/wintile-windows-10-window-tiling-for-gnome/
- https://extensions.gnome.org/extension/779/clipboard-indicator/
- https://extensions.gnome.org/extension/7/removable-drive-menu/
