1. Start with a normal update cycle.

```
sudo apt update
sudo apt upgrade
sudo apt autoclean
sudo apt autoremove
```

2. Install some key utilities.

```
sudo apt install terminator htop numix-gtk-theme numix-icon-theme numix-icon-theme-circle gnome-tweaks screen git inkscape
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
