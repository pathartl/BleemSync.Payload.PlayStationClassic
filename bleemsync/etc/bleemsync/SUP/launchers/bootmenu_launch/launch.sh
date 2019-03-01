#!/bin/sh

### LOAD CONFIGURATION ########################################################
source "/var/volatile/bleemsync.cfg"

### LOAD FUNCTION LIBRARIES ###################################################
source "/media/bleemsync/etc/bleemsync/FUNC/0050_bleemsync.funcs"

killall -s KILL showLogo sonyapp ui_menu auto_dimmer pcsx sdl_display &> "/dev/null"
echo "launch_BootMenu" > "/tmp/launchfilecommand"