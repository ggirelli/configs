# Ubuntu

1. Remove any additional kernel parameter used during installation.
2. Synchronize Mozilla Firefox with your account.
3. Install favourite text-editor (SublimeText 3, https://www.sublimetext.com/) and any additional packages.
   - Package control, https://packagecontrol.io/
   - ColorPicker
   - DocBlockr
   - Emmet
     Layout \*
   - Markdown Extended
   - Markdown Preview
   - MarkdownEditing
   - Material Color Scheme
   - SideBarEnhancements
   - SublimeGit
   - SublimeRepl
   - Theme - Chenturion
   - Theme - Numix
   - Theme - Numix Light
   - Themr
   - Typewriter
   - WakaTime (API key from https://wakatime.com/help/plugins/sublime-text)
   - yUML
4. Install `terminator` and `htop`
5. Install `screen`
6. Install Ubuntu Themes
   - `unity-tweak-tool`
   - `gnome-tweak-tool`
   - `numix-gtk-theme numix-icon-theme-circle` (`ppa:numix/ppa`)
     - Delete `~/.local/share/icons/x-terminal-emulator.png` if terminator has the old icon in Unity launcher.
7. Install other browsers
   - google-chrome (and set up <u>duckduckgo</u> on it!)
8. Install `flashplugin-installer`
9. Install various programs:
   - Skype (plus `sudo apt-get install sni-qt sni-qt:i386` for the tray icon)
   - Dropbox
   - Spotify
   - Clementine
10. Install VirtualBox
    - Create a VM with Windows and install any required software
11. Install `jekyll`, `jekyll-toc` (`ruby-dev`)
12. Install `redshift`, `redshift-gtk`
13. Install `mendeleydesktop` (paper library)
14. Install FIJI, place it in the home folder and create a desktop launcher
15. Change desktop background
16. Install `git`
    - Set user.email and push.default
17. Install `pavucontrol`
18. Setup `ssh`.
19. Install `inkscape`.
20. Install `tightvncserver` for remote desktop access.
21. Disable guest account.
    - `/etc/lightdm/lightdm.conf`
    - `[SeatDefaults]` `allow-guest=false`
22. Install java.
23. Install python libraries.
24. Install R libraries.
25. Automount external disks.
26. Install vlc (`vlc-nox`).
27. Install `solaar`
28. Install `sshfs`
29. Install `pass`
30. Install Teamviewer
31. Auto HD mount
32. Install `fastqc`
    - Retrieve Configurations file from previous installation.
33. Install `parallel`
34. Install `bwa`
35. Import `.bashrc`, `.bash_aliases` and `.bash_profile`
36. Install `sqlite3`
37. Set `pageDown` and `pageUp` for history-based command autocompletion by editing file `/etc/inputrc` and un-commenting the related lines.
38. Update swap by creating a new swapfile of X MB with the following commands (require sudo): `swapoff -a; dd if=/dev/zero of=/swapfile bs=1M count=X; chmod 0600 /swapfile; mkswap /swapfile; swapon /swapfile`
39. Disable automatic network printer discovery with `sudo systemctl stop cups-browsed` followed by `sudo systemctl disable cups-browsed`
