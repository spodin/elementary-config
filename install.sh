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

## Software & Updates Application
sudo apt-get install software-properties-gtk

## PPA Purge
sudo apt-get install ppa-purge

## Seahorse: Passwords and Encryption Keys Manager (https://wiki.gnome.org/Apps/Seahorse)
sudo apt-get install seahorse

## Google Chrome (https://www.google.com/chrome)
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo gdebi --non-interactive google-chrome-stable_current_*.deb

## Git (https://git-scm.com)
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt-get install git -y

## Text-mode Interface for Git (https://github.com/jonas/tig)
sudo apt-get install tig -y

## Apache Maven (https://maven.apache.org)
sudo apt-get install maven -y

## Gradle (https://gradle.org)
sudo add-apt-repository ppa:cwchien/gradle -y
sudo apt-get install gradle-ppa -y

## DBeaver (https://dbeaver.jkiss.org/download)
wget -O dbeaver-ce.tar.gz https://dbeaver.jkiss.org/files/dbeaver-ce-latest-linux.gtk.x86_64.tar.gz
tar xf dbeaver-ce.tar.gz -C ~/workspace

## Double Commander (http://doublecmd.sourceforge.net)
sudo add-apt-repository ppa:alexx2000/doublecmd -y
sudo apt-get install doublecmd-gtk -y

## Midnight Commander (https://midnight-commander.org)
sudo add-apt-repository ppa:eugenesan/ppa -y
sudo apt-get install mc -y

## Github Atom (https://atom.io)
sudo add-apt-repository ppa:webupd8team/atom -y
sudo apt install atom -y

## Calibre E-book Manager (https://calibre-ebook.com)
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"

## LibreOffice (https://www.libreoffice.org)
sudo add-apt-repository ppa:libreoffice/libreoffice-6-2 -y
sudo apt-get install libreoffice -y

## LibreOffice Papirus Theme (https://github.com/PapirusDevelopmentTeam/papirus-libreoffice-theme)
sudo add-apt-repository ppa:papirus/papirus -y
sudo apt-get install libreoffice-style-papirus -y

## GParted (http://gparted.org)
sudo apt-get install gparted -y

## Neofetch (https://github.com/dylanaraps/neofetch)
sudo add-apt-repository ppa:dawidd0811/neofetch -y
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
sudo apt-get install elementary-tweaks -y

## LXTask Task Manager
sudo apt-get install lxtask -y

## Transmission BitTorrent Client (https://transmissionbt.com)
sudo apt-get install transmission -y

## Command Line HTTP Client (https://httpie.org)
sudo apt-get install httpie -y

## A cat(1) clone with syntax highlighting and Git integration (https://github.com/sharkdp/bat)
wget https://github.com/sharkdp/bat/releases/download/v0.12.1/bat_0.12.1_amd64.deb
sudo gdebi bat*

## Postman (https://www.getpostman.com)
#wget -O postman.tar.gz https://dl.pstmn.io/download/latest/linux64
#tar xf postman.tar.gz -C ~/workspace

# DOCKER & DOCKER COMPOSE
# For Docker Compose you should verify latest release version at:
# https://github.com/docker/compose/releases
# ---------------------------------------------------------------

## Docker CE (https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-using-the-convenience-script)
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh

## Docker Compose (https://docs.docker.com/compose/install/#master-builds)
#sudo curl -L https://github.com/docker/compose/releases/download/1.24.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
#sudo chmod +x /usr/local/bin/docker-compose

## Docker Compose Command-line completion (https://docs.docker.com/compose/completion)
#sudo curl -L https://raw.githubusercontent.com/docker/compose/1.24.0/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

# ASSETS INSTALLATION
# -------------------

## UnRar Library
sudo gdebi --non-interactive bin/libunrar*.deb

# VIDEO, AUDIO
# ------------

## Sound Converter (http://soundconverter.org)
#sudo apt-get install soundconverter -y

## EasyTAG (https://wiki.gnome.org/Apps/EasyTAG)
#sudo add-apt-repository ppa:amigadave/ppa -y
#sudo apt-get install easytag -y
