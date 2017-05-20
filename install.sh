#!/bin/bash

## Remove Midori Browser, Mail (Geary), Audience and Simple Scan
sudo apt-get purge midori -y
sudo apt-get purge pantheon-mail -y
sudo apt-get purge audience -y
sudo apt-get purge simple-scan -y

## System Update
sudo apt-get update && sudo apt-get dist-upgrade

## Gdebi
sudo apt install gdebi

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

## GitKraken (https://www.gitkraken.com)
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo gdebi --non-interactive gitkraken-amd64.deb

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

## GParted (http://gparted.org)
sudo apt-get install gparted -y

## Neofetch (https://github.com/dylanaraps/neofetch)
sudo add-apt-repository ppa:dawidd0811/neofetch -y
sudo apt update
sudo apt install neofetch -y

## Jekyll (https://jekyllrb.com)
sudo apt-get install jekyll -y

## VLC (http://www.videolan.org/vlc/index.html)
sudo apt-get install vlc -y

## YouTube Downloader (https://rg3.github.io/youtube-dl)
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

## XClip (https://github.com/astrand/xclip)
sudo apt-get install xclip -y

## Diodon Clipboard Manager (https://launchpad.net/diodon)
sudo apt-add-repository ppa:diodon-team/stable -y
sudo apt-get update
sudo apt-get install diodon -y

## Elementary Tweaks (https://github.com/elementary-tweaks/elementary-tweaks)
sudo add-apt-repository ppa:philip.scott/elementary-tweaks -y
sudo apt-get update
sudo apt-get install elementary-tweaks -y

## LXTask Task Manager
sudo apt-get install lxtask -y

# ASSETS INSTALLATION
# -------------------

## UnRar Library
sudo gdebi --non-interactive bin/libunrar*.deb

## Copy Git Configuration with Replacement
yes | cp -rf .gitconfig ~/
