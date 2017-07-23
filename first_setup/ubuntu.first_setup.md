1. Remove any additional kernel parameter used during installation.
2. Synchronize Mozilla Firefox with your account.
3. Install favourite text-editor (SublimeText 3, https://www.sublimetext.com/) and any additional packages.
	* Package control, https://packagecontrol.io/
	* ColorPicker
	* DocBlockr
	* Emmet
   Layout * 
	* Markdown Extended
	* Markdown Preview
	* MarkdownEditing
    * Material Color Scheme
    * SideBarEnhancements
    * SublimeGit
    * SublimeRepl
    * Theme - Chenturion
    * Theme - Numix
    * Theme - Numix Light
    * Themr
    * Typewriter
    * WakaTime (API key from https://wakatime.com/help/plugins/sublime-text)
    * yUML
4. Install `terminator` and `htop`
5. Install `screen`
6. Install Ubuntu Themes
    * `unity-tweak-tool`
    * `gnome-tweak-tool`
    * `numix-gtk-theme numix-icon-theme-circle` (`ppa:numix/ppa`)
        - Delete `~/.local/share/icons/x-terminal-emulator.png` if terminator has the old icon in Unity launcher.
5. Install other browsers
    * google-chrome (and set up <u>duckduckgo</u> on it!)
6. Install `flashplugin-installer`
7. Install various programs:
    * Skype (plus `sudo apt-get install sni-qt sni-qt:i386` for the tray icon)
    * Dropbox
    * Spotify
    * Clementine
8. Install VirtualBox
    * Create a VM with Windows and install any required software
9. Install `jekyll`, `jekyll-toc` (`ruby-dev`)
10. Install `redshift`, `redshift-gtk`
11. Install `mendeleydesktop` (paper library)
12. Install FIJI, place it in the home folder and create a desktop launcher
13. Change desktop background
14. Install `git` 
    * Set user.email and push.default
15. Install `pavucontrol` 
16. Setup `ssh`.
17. Install `inkscape`.
18. Install `tightvncserver` for remote desktop access.
19. Disable guest account.
    * `/etc/lightdm/lightdm.conf`
    * `[SeatDefaults]`  `allow-guest=false`
20. Install java.
21. Install python libraries.
22. Install R libraries.
23. Automount external disks.
24. Install vlc (`vlc-nox`).
25. Install `solaar`
26. Install `sshfs`
27. Install `pass` 
28. Install Teamviewer
29. Auto HD mount
30. Install `fastqc`
    * Retrieve Configurations file from previous installation.
31. Install `parallel` 
32. Install `bwa` 
33. Import `.bashrc`, `.bash_aliases` and `.bash_profile`
34. Install `sqlite3`
35. Set `pageDown` and `pageUp` for history-based command autocompletion by editing file `/etc/inputrc` and un-commenting the related lines.