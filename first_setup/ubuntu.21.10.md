1. Start with a normal update cycle.

```
sudo apt update
sudo apt upgrade
sudo apt autoclean
sudo apt autoremove
```

2. Install some key utilities.

```
sudo apt install terminator htop bashtop numix-gtk-theme numix-icon-theme numix-icon-theme-circle gnome-tweaks screen git inkscape net-tools stress lm-sensors cifs-utils alien lyx
```

3. Open the `teaks` application and, under "Appearance", select the "Numix" theme and "Numix-circle" icons. The turn manually on the theme's dark mode by changing to `1` the relative value in:

```
nano ~/.config/gtk-3.0/settings.ini
```

4. [ZSF] Update swap by creating a new swapfile of 32 GB with the following commands.

```
sudo zfs create -V 32G -b $(getconf PAGESIZE) -o logbias=throughput -o sync=always -o primarycache=metadata -o com.sun:auto-snapshot=false rpool/swap
sudo mkswap -f /dev/zvol/rpool/swap
sudo swapon /dev/zvol/rpool/swap
echo "/dev/zvol/rpool/swap none swap discard 0 0" | sudo tee -a /etc/fstab
```

5. If new build, check temperature behaviours with `stress` and `sensors` (or `bashtop` with temperature option turned on).

6. Format internal drives (Ext4) using the `Disks` application, then add them to `sudo nano /etc/fstab` and mount them with `sudo mount -a`. 

7. Add external network drives to `sudo nano /etc/fstab`, and then mount them with `sudo mount -a`.

8. Install third party softwares
    - ClickUp: https://clickup.com/download#desktop
    - Dropbox: https://www.dropbox.com/install
    - Slack: https://slack.com/downloads/linux
    - Spotify: https://www.spotify.com/se/download/linux/
    - Steam: https://store.steampowered.com/about/
    - TorBrowser: https://www.torproject.org/download/
    - VSC: https://code.visualstudio.com/
    - Zoom: https://zoom.us/download#client_4meeting

9. Install `brew`: https://brew.sh/https://brew.sh/

10. Install GitHub Client: `brew install gh`