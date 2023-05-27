FROM ubuntu:14.04

RUN apt-get update && apt-get install -y wget unzip
RUN wget https://downloads.sourceforge.net/project/keepass/KeePass%202.x/2.36/KeePass-2.36.zip
RUN unzip -d /KeePass KeePass-2.36.zip

# xdotool allows KeePass to initiate autoinput (when you press Ctrl+V)
RUN apt-get update && apt-get install -y mono-complete xdotool

WORKDIR /KeePass/

CMD ["mono", "/KeePass/KeePass.exe"]