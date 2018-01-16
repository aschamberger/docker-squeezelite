#!/bin/sh

# set proper rights
chown -R nobody:users /config

# Set proper UID/GID/UMASK as on host system
# unRAID host uses 99:100 for nobody:users, and a umask of 0000
usermod -u $USER_ID nobody
usermod -g $GROUP_ID nobody
umask $UMASK

# Allow all users read and write access to all sound devices
chmod -R a+rwX /dev/snd/

# run alsa.sh to set up sound device
if [ -e /config/alsa.sh ]; then
  /bin/bash /config/alsa.sh
fi

# run Squeezelite
exec /sbin/setuser nobody /usr/bin/squeezelite -n "$PLAYER" -o "$OUTPUT_DEVICE" -a 80:::0 -m "$MAC_ADDRESS"
