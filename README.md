To build container

`docker build -t 'keepass:my' .`

To execute KeePass

`docker run --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Dropbox/KeePass/KeePass.config.xml:/KeePass/KeePass.config.xml -v ~/Dropbox/KeePass/accounts.kdbx:/KeePass/accounts.kdbx 'keepass:my'`

Before using you need allow root to connect to X Server:

`xhost +SI:localuser:root`

To avoid doing this every time you can add this command to some `/etc/X11/Xsession.d/*` file. There is a file `35x11-common_xhost-local` for example.