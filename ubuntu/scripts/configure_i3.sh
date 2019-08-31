#!/bin/bash

# install i3 first
sudo apt-get install i3

CONF_DIR=$HOME/.config

if [[ ! -d $CONF_DIR ]] ; then
	mkdir $CONF_DIR

# replace i3 config with this one
cp ../i3/config $CONF_DIR/i3/

# default terminal
sudo apt-get install rxvt-unicode

# add .Xresources file
cp ../.Xresources $HOME/

git clone git://github.com/tobi-wan-kenobi/bumblebee-status
mv bumblebee-status $CONF_DIR/

# Required python modules for bumblebee
pip install power netifaces requests psutil
