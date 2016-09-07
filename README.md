# Intention

Goal #1: provision a cloud computer as a complete development server within fifteen minutes.

Goal #2: build docker toolbox for coreos.

Because this is intended for docker, this is lighter weight than ansible,
chef, and puppet. (translation, "not full-featured" :o)

# Organization

Example installation: ./install firewall java spacemacs

An app may be broken into four files:
* [appname]-pre, typically for prerequisites of the app.
* [appname], typically for installation of the app.
* [appname]-post, typically for setup.
* [appname]-update, for updating after already being installed.

All pre files are called, then all plain files, and lastly all post files.

As apps are installed thay are added to file **installed_apps**.
Tracking which apps are installed enables updating them later.

# Installation

```sh
git clone git@github.com:brianmd/toolbox.git
cd toolbox/install
./install apt-update utils zsh tmux dotfiles spacemacs docker firewall
reboot
```

Note: this repository is still a work in progress, so manual steps are required.

