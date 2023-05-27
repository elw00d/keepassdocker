To build container

docker build -t 'keepass:my' .

To execute KeePass

docker run --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/Dropbox/KeePass/KeePass.config.xml:/KeePass/KeePass.config.xml -v ~/Dropbox/KeePass/accounts.kdbx:/KeePass/accounts.kdbx 'keepass:my'

