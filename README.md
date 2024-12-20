
## Wayland compositor

Assuming you have already installed a minimal Debian 12 install.
The series of shell scripts are intended to facilitate installing popular window managers.

Within the install.sh file, you can choose to install the following window managers:

* sway

**You can select between vanilla(non-customized) and completely customized (my personal customization)** 

# Before installing

# switch to root to append your username (es. debian) to the group of sudoers

``` 
su root

apt update

apt install sudo

sudo usermod -aG sudo username

sudo reboot

``` 

# Steps to follow for the installation

``` 
wget https://github.com/docgit27/sway_installation/raw/main/install.sh

chmod +x install.sh

./install.sh

rm install.sh

```

There's a good "compositor" possibility for the purpose of having a window manager for Wayland too.
Added scripts:

* nwg-look - installs an lxappearance program to use GTK themes and icons in Wayland.
* rofi-wayland - designed to behave like rofi(xorg) but in Wayland.

NOTE:  The recommended login manager will be gdm3 or sddm.
"# sway_installation" 
