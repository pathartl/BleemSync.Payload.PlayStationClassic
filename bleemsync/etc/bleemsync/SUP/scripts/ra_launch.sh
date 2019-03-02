#!/bin/sh

# Load BS variables
source "/var/volatile/bleemsync.cfg"

# Remove previous RA log
rm -f "$runtime_log_path/retroarch.log"

chmod +x "$bleemsync_path/bin/ra_watch"
chmod +x "$retroarch_path/retroarch"

touch "/tmp/launch_ra.flag"

while [ -f "/tmp/launch_ra.flag" ]; do
  rm -f "/tmp/launch_ra.flag"
  "$retroarch_path/retroarch" "$@" 2>&1 | "$bleemsync_path/bin/ra_watch" >> "$runtime_log_path/retroarch.log"
done
