# NVIDIA

## Drivers and utilities

```bash
sudo apt install nvidia-prime
sudo apt install nvtop
```

Open `Software updates` and select the latest __proprietary__ drivers (if possible, choose a __tested__ option). You might need to enroll a new MOK, follow the automatic procedure if needed.

### Known issues

In ubuntu 21.10 with NVIDIA 510 drivers, when waking up from sleep the graphic card does not wake up. Only unplugging and re-plugging the video cable wakes it up. The workaround below is from [here](https://askubuntu.com/a/1391917):

```bash
sudo systemctl stop nvidia-suspend.service
sudo systemctl stop nvidia-hibernate.service
sudo systemctl stop nvidia-resume.service

sudo systemctl disable nvidia-suspend.service
sudo systemctl disable nvidia-hibernate.service
sudo systemctl disable nvidia-resume.service

sudo mv /lib/systemd/system-sleep/nvidia ~/nvidia.bak
```

## CUDA

- [ ] Follow instructions from [here](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html).
  - [ ] Base installer [page](https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&Distribution=Ubuntu&target_version=20.04&target_type=deb_local).
  - [ ] Install `sudo apt install nvidia-cuda-dev`
