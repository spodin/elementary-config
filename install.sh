#!/bin/bash

## Purge unused applications
sudo apt-get purge pantheon-mail -y
sudo apt-get purge audience -y
sudo apt-get purge simple-scan -y
sudo apt-get purge epiphany-browser -y

## System Update
sudo apt-get update && sudo apt-get dist-upgrade

## Gdebi
sudo apt install gdebi -y

## Software Properties Common to enable PPA
sudo apt-get install software-properties-common -y

## Google Chrome (https://www.google.com/chrome)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi --non-interactive google-chrome-stable_current_*.deb

## Viber Messenger (https://www.viber.com/en)
wget http://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo gdebi --non-interactive viber.deb

## Skype for Linux (https://community.skype.com/t5/Linux/Where-to-get-the-latest-Skype-for-Linux-Alpha/td-p/4536964)
wget https://repo.skype.com/latest/skypeforlinux-64.deb
sudo gdebi --non-interactive skypeforlinux-64.deb

## Oracle JDK 8 (http://www.oracle.com/technetwork/java/javase/downloads/index.html)
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y

## Git (https://git-scm.com)
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get update
sudo apt-get install git -y

## Text-mode Interface for Git (https://github.com/jonas/tig)
sudo apt-get install tig -y

## Apache Maven (https://maven.apache.org)
sudo apt-get install maven -y

## Gradle (https://gradle.org)
sudo add-apt-repository ppa:cwchien/gradle -y
sudo apt-get update
sudo apt-get install gradle-ppa -y

## pgAdmin3 (https://www.pgadmin.org)
sudo apt-get install pgadmin3 -y

## Double Commander (http://doublecmd.sourceforge.net)
sudo add-apt-repository ppa:alexx2000/doublecmd -y
sudo apt-get update
sudo apt-get install doublecmd-gtk -y

## Midnight Commander (https://midnight-commander.org)
sudo add-apt-repository ppa:eugenesan/ppa -y
sudo apt-get update
sudo apt-get install mc -y

## KeePass2 (http://keepass.info)
sudo add-apt-repository ppa:jtaylor/keepass -y
sudo apt-get update
sudo apt-get install keepass2 -y

## Github Atom (https://atom.io)
sudo add-apt-repository ppa:webupd8team/atom -y
sudo apt update
sudo apt install atom -y

## Calibre E-book Manager (https://calibre-ebook.com)
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

## LibreOffice (https://www.libreoffice.org)
sudo add-apt-repository ppa:libreoffice/libreoffice-5-2 -y
sudo apt-get update
sudo apt-get install libreoffice -y

## LibreOffice Papirus Theme (https://github.com/PapirusDevelopmentTeam/papirus-libreoffice-theme)
sudo add-apt-repository ppa:papirus/papirus -y
sudo apt-get update
sudo apt-get install libreoffice-style-papirus -y

## GParted (http://gparted.org)
sudo apt-get install gparted -y

## Neofetch (https://github.com/dylanaraps/neofetch)
sudo add-apt-repository ppa:dawidd0811/neofetch -y
sudo apt update
sudo apt install neofetch -y

## Jekyll (https://jekyllrb.com)
sudo apt-get install ruby ruby-dev make gcc -y
sudo gem install jekyll bundler

## VLC (http://www.videolan.org/vlc/index.html)
sudo apt-get install vlc -y

## YouTube Downloader (https://rg3.github.io/youtube-dl)
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

## XClip (https://github.com/astrand/xclip)
sudo apt-get install xclip -y

## Elementary Tweaks (https://github.com/elementary-tweaks/elementary-tweaks)
sudo add-apt-repository ppa:philip.scott/elementary-tweaks -y
sudo apt-get update
sudo apt-get install elementary-tweaks -y

## LXTask Task Manager
sudo apt-get install lxtask -y

## Transmission BitTorrent Client (https://transmissionbt.com)
sudo apt-get install transmission -y

## Postman (https://www.getpostman.com)
wget -O postman.tar.gz https://dl.pstmn.io/download/latest/linux64
tar xf postman.tar.gz -C ~/workspace

# DOCKER & DOCKER COMPOSE
# For Docker Compose you should verify latest release version at:
# https://github.com/docker/compose/releases
# ---------------------------------------------------------------

## Docker CE (https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-convenience-script)
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh

## Docker Compose (https://docs.docker.com/compose/install/#master-builds)
#sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
#sudo chmod +x /usr/local/bin/docker-compose

## Docker Compose Command-line completion ()
#sudo curl -L https://raw.githubusercontent.com/docker/compose/1.18.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

# ASSETS INSTALLATION
# -------------------

## UnRar Library
sudo gdebi --non-interactive bin/libunrar*.deb

## Copy Git Configuration with Replacement
yes | cp -rf dotfiles/.gitconfig ~/

## Global `.gitignore`
yes | cp -rf dotfiles/.gitignore_global ~/
git config --global core.excludesfile ~/.gitignore_global

# VIDEO, AUDIO
# ------------

## Sound Converter (http://soundconverter.org)
#sudo apt-get install soundconverter -y

## EasyTAG (https://wiki.gnome.org/Apps/EasyTAG)
#sudo add-apt-repository ppa:amigadave/ppa -y
#sudo apt-get update
#sudo apt-get install easytag -y
