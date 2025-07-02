#!/bin/bash

sudo mkdir -p /usr/share/fonts/nerdfonts
sudo cp ./fonts/* /usr/share/fonts/nerdfonts/
sudo fc-cache -f -v
