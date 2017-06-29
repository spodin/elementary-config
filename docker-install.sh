#!/bin/bash

# -------------------------------------------------------------
# This will install latest Docker CE for amd64 using repository
# -------------------------------------------------------------

## Update the `apt` package index
sudo apt-get update

## Install packages to allow apt to use a repository over HTTPS
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y

## Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

## Verify that the key fingerprint is `9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88`
sudo apt-key fingerprint 0EBFCD88

## Set up the **stable** repository. You always need the **stable** repository, even if you want to install builds from the **edge** or **testing** repositories as well. To add the **edge** or **testing** repository, add the word `edge` or `testing` (or both) after the word `stable` in the commands below
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y

## Update the `apt` package index
sudo apt-get update

## Install latest version (use `sudo apt-get install docker-ce=<VERSION>` for specific version)
sudo apt-get install docker-ce -y
