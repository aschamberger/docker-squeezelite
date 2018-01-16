# aschamberger/squeezelite

https://github.com/ralph-irving/squeezelite

## Usage

```
docker create \
	--name=Squeezelite \
	--device=/dev/snd/ \
	-v <path to data>:/config \
	-e USER_ID=<uid> -e GROUP_ID=<gid> -e UMASK=<umask> \
	-e PLAYER=<name> -e OUTPUT_DEVICE=<device> -e MAC_ADDRESS=<mac> \
	aschamberger/squeezelite
```

## Parameters

* `--device=/dev/snd/` - pass sound devices to container
* `-v /config` - squeezelite data (config)
* `-e USER_ID` - match UID of user *nobody* of host system
* `-e GROUP_ID` - match GID of group *users* of host system
* `-e UMASK` - match UMASK of host system
* `-e PLAYER` - squeezelite player name
* `-e OUTPUT_DEVICE` - squeezelite output device
* `-e MAC_ADDRESS` - squeezelite mac address

## Notes

* [Squeezelite Linux builds](https://sourceforge.net/projects/lmsclients/files/squeezelite/linux/)
* [Sound card access for non-root users](https://alsa.opensrc.org/TroubleShooting#Check_that_non-root_users_can_access_the_sound_device_special_files)
