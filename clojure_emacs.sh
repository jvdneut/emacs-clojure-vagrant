#!/bin/bash

shopt -s dotglob

if (! (dpkg-query -Wf'${db:Status-abbrev}' emacs24  | grep -q '^i')); then
  apt-get -qy update
  apt-get install python-software-properties -y
  add-apt-repository ppa:cassou/emacs
  apt-get update
  apt-get install emacs24 emacs24-el emacs24-common-non-dfsg clojure -y
  else
    echo System has emacs24
fi

if [ ! -f /home/vagrant/.emacs.d ]; then
  #cp /home/vagrant/src/.emacs /home/vagrant/.emacs
  cp -R /home/vagrant/src/emacs-for-clojure-book1 /home/vagrant/.emacs.d
  else
  echo System has .emacs
fi

if (! (/home/vagrant/bin/lein version 2> /dev/null | grep -q 'Leiningen')); then 
  chmod +x /home/vagrant/src/setup
  su -c "cd /home/vagrant/src && ./setup" vagrant 
  chown -R vagrant /home/vagrant/
  else
  echo System has Leiningen installed
fi

if [ ! -f /home/vagrant/.lein/.profiles ]; then
  cp /home/vagrant/src/lein/.profiles /home/vagrant/.lein/.profiles
  else
  echo System has .lein profile
fi

sudo apt-get install git -y
sudo apt-get install openjdk-7-jre -y
sudo update-java-alternatives -s java-1.7.0-openjdk-i386
sudo apt-get install vim -y
sudo apt-get install tmux -y
#sudo ufw disable
sudo ufw allow 3449/tcp
