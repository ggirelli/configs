# Ubuntu 21.10 - first startup configs

- Start with a normal update cycle.

```bash
sudo apt update
sudo apt upgrade
sudo apt autoclean
sudo apt autoremove
```

- Install some key utilities.

```bash
sudo apt install terminator htop bashtop numix-gtk-theme numix-icon-theme \
                 numix-icon-theme-circle gnome-tweaks screen git inkscape \
                 net-tools stress lm-sensors cifs-utils alien lyx zsh gimp
```

- Open the `tweaks` application and, under "Appearance", select the "Numix" theme and "Numix-circle" icons.  
   Then turn manually on the theme's dark mode by changing to `1` the relative value in:

```bash
nano ~/.config/gtk-3.0/settings.ini
```

- [ZSF] Update swap by creating a new swapfile of 32 GB with the following commands.

```bash
sudo zfs create -V 32G -b $(getconf PAGESIZE) -o logbias=throughput \
    -o sync=always -o primarycache=metadata -o com.sun:auto-snapshot=false rpool/swap
sudo mkswap -f /dev/zvol/rpool/swap
sudo swapon /dev/zvol/rpool/swap
echo "/dev/zvol/rpool/swap none swap discard 0 0" | sudo tee -a /etc/fstab
```

- If new build, check temperature behaviours with `stress` and `sensors`  
   (or `bashtop` with temperature option turned on).

- Format internal drives (Ext4) using the `Disks` application,  
   then add them to `sudo nano /etc/fstab` and mount them with `sudo mount -a`. 

- Add external network drives to `sudo nano /etc/fstab`, and then mount them with `sudo mount -a`.

- Install third party softwares
  - ClickUp: [installation page](https://clickup.com/download#desktop)
  - Dropbox: [installation page](https://www.dropbox.com/install)
  - Slack: [installation page](https://slack.com/downloads/linux)
  - Spotify: [installation page](https://www.spotify.com/se/download/linux/)
  - Steam: [installation page](https://store.steampowered.com/about/)
  - TorBrowser: [installation page](https://www.torproject.org/download/)
  - VSC: [installation page](https://code.visualstudio.com/)
  - Zoom: [installation page](https://zoom.us/download#client_4meeting)

- Install `brew`: [brew homepage](https://brew.sh/https://brew.sh/)

- Install GitHub Client: `brew install gh` ([installation page](https://github.com/cli/cli#installation))

- Install OhMyZsh: [installation page](https://ohmyz.sh/#install)
  - Add `powerlevel10k` theme: [repo](https://github.com/romkatv/powerlevel10k)

- Install `bat`: `sudo apt install bat` ([repo](https://github.com/sharkdp/bat#installation))
    Then add the alias to `.zprofile`: `echo "alias bat=batcat" | tee -a ~/.zprofile`

- Install `fd` ([repo](https://github.com/sharkdp/fd#installation))

```bash
sudo apt install fd-find
mkdir -p ~/.local/bin
ln -s $(which fdfind) ~/.local/bin/fd
echo "PATH=~/.local/bin:$PATH" | tee -a ~/.zprofile
```

- Install `hyperfine`: [repo](https://github.com/sharkdp/hyperfine/releases)

- Install `appimagelauncher`: [repo](https://github.com/TheAssassin/AppImageLauncher/wiki/Install-on-Ubuntu-or-Debian)

- Install Steam games.

## NVIDIA cards

```bash
sudo apt install nvidia-prime
```

Open `Software updates` and select the latest __proprietary__ drivers (if possible, choose a __tested__ option). You might need to enroll a new MOK, follow the automatic procedure if needed.

## GitHub setup

- Create a new authentication token: [GitHub dev settings](https://github.com/settings/tokens)
  - The minimum required scopes are 'repo', 'read:org', 'admin:public_key'.
- Authenticate with `gh auth login`.

## Python setup

- Install basic workflow packages.

``` bash
sudo apt-get install python3 python3-venv python3-pip
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
python3 -m pip install --user pipx
python3 -m pipx ensurepath
pip install black pytest vulture mypy pre-commit
```

- Install Miniconda: [installation page](https://docs.conda.io/en/latest/miniconda.html#linux-installers)
  - Remember to disable automatic conda `base` activation.
  - Update conda with `conda update -n base -c defaults conda`.

- Install jupyter-lab in a reserved environment.

```bash
conda create -n jupyter-lab
conda activate jupyter-lab
conda install pip
pip install jupyterlab
```

- Change JupyterLab theme via GUI.

## R setup

*Coming soon*.

## Jekyll setup

*Coming soon*.
