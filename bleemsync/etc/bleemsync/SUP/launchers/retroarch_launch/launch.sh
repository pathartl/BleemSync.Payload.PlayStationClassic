#!/bin/sh

### LOAD CONFIGURATION ########################################################
source "/var/volatile/bleemsync.cfg"

### LOAD FUNCTION LIBRARIES ###################################################
source "/media/bleemsync/etc/bleemsync/FUNC/0050_bleemsync.funcs"

touch /data/power/prepare_suspend
echo launch_retroarch > "/tmp/launchfilecommand"