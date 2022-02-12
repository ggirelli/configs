1. Start with a normal update cycle.

```
sudo apt update
sudo apt upgrade
sudo apt autoclean
sudo apt autoremove
```

2. Install some key utilities.

```
sudo apt install terminator htop bashtop numix-gtk-theme numix-icon-theme \
                 numix-icon-theme-circle gnome-tweaks screen git inkscape \
                 net-tools stress lm-sensors cifs-utils alien lyx zsh gimp
```

3. Open the `tweaks` application and, under "Appearance", select the "Numix" theme and "Numix-circle" icons.  
   Then turn manually on the theme's dark mode by changing to `1` the relative value in:

```
nano ~/.config/gtk-3.0/settings.ini
```

4. [ZSF] Update swap by creating a new swapfile of 32 GB with the following commands.

```
sudo zfs create -V 32G -b $(getconf PAGESIZE) -o logbias=throughput \
    -o sync=always -o primarycache=metadata -o com.sun:auto-snapshot=false rpool/swap
sudo mkswap -f /dev/zvol/rpool/swap
sudo swapon /dev/zvol/rpool/swap
echo "/dev/zvol/rpool/swap none swap discard 0 0" | sudo tee -a /etc/fstab
```

5. If new build, check temperature behaviours with `stress` and `sensors`  
   (or `bashtop` with temperature option turned on).

6. Format internal drives (Ext4) using the `Disks` application,  
   then add them to `sudo nano /etc/fstab` and mount them with `sudo mount -a`. 

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

10. Install GitHub Client: `brew install gh` (https://github.com/cli/cli#installation)

11. Install OhMyZsh: https://ohmyz.sh/#install
    - Add `powerlevel10k` theme: https://github.com/romkatv/powerlevel10k

11. Install `bat`: `sudo apt install bat` (https://github.com/sharkdp/bat#installation)
    Then add the alias to `.zprofile`: `echo "alias bat=batcat" | tee -a ~/.zprofile`

12. Install `fd` (https://github.com/sharkdp/fd#installation)

```
sudo apt install fd-find
mkdir -p ~/.local/bin
ln -s $(which fdfind) ~/.local/bin/fd
echo "PATH=~/.local/bin:$PATH" | tee -a ~/.zprofile
```

13. Install `hyperfine`: https://github.com/sharkdp/hyperfine/releases

14. Install `appimagelauncher`: https://github.com/TheAssassin/AppImageLauncher/wiki/Install-on-Ubuntu-or-Debian

15. Install Steam games.

## NVIDIA cards

```
sudo apt install nvidia-prime
```

Open `Software updates` and select the latest __proprietary__ drivers (if possible, choose a __tested__ option). You might need to enroll a new MOK, follow the automatic procedure if needed.

## GitHub setup

* Create a new authentication token: https://github.com/settings/tokens
    - The minimum required scopes are 'repo', 'read:org', 'admin:public_key'.
* Authenticate with `gh auth login`.

## Python setup


* Install basic workflow packages.

```
sudo apt-get install python3 python3-venv python3-pip
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
python3 -m pip install --user pipx
python3 -m pipx ensurepath
```

* Install Miniconda: https://docs.conda.io/en/latest/miniconda.html#linux-installers
    - Remember to disable automatic conda `base` activation.
    - Update conda with `conda update -n base -c defaults conda`.

* Install jupyter-lab in a reserved environment.

```
conda create -n jupyter-lab
conda activate jupyter-lab
conda install pip
pip install jupyterlab
```

* Change JupyterLab theme via GUI.

## R setup

*Coming soon*.

## Jekyll setup

*Coming soon*.
