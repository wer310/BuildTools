#! /usr/bin/bash
cd $HOME
wget https://github.com/wer310/BuildTools/raw/main/BuildTools.jar
apt-get install openjdk-17 -y
java -jar BuildTools.jar --rev $1
wget https://download.getbukkit.org/spigot/spigot-$1.jar -O server.jar
cd $HOME/../usr/bin
echo "java -Xmx1024M -Xms1024M -jar server.jar nogui" > run
cd $HOME


