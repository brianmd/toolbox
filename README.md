# Intention

Docker toolbox for coreos. Also app installations for linux systems.

Because this is intended for docker, this is lighter weight than ansible,
chef, and puppet. (Read, "not full-featured" :o)

# Organization

Example apps are firewall, java, and spacemacs.

An app may be broken into four files:
* <appname>-pre, typically for prerequisites of the app.
* <appname>, typically for installation of the app.
* <appname>-post, typically for setup.
* <appname>-update, for updating after already being installed.

As apps are installed, thay are added to file **installed_apps**,
to enable updating all apps later.

# Installation

```sh
git clone git@github.com:brianmd/toolbox.git
cd toolbox/install
./install apt-update utils zsh tmux dotfiles spacemacs docker firewall
reboot
```

Note: this repository is still a work in progress, so manual steps are required.

