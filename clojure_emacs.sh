#!/bin/bash

shopt -s dotglob

apt-get install build-essential curl git m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev zlib1g-dev -y

# install linuxbrew (port of osx homebrew)
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
git clone https://github.com/Homebrew/linuxbrew.git /home/vagrant/.linuxbrew

# add linuxbrew to paths
echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> /home/vagrant/.bashrc
echo 'export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"' >> /home/vagrant/.bashrc
echo 'export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"' >> /home/vagrant/.bashrc

#hash -r

# install latest version of emacs (for newer CIDER)
/home/vagrant/.linuxbrew/bin/brew install emacs


##if (! (dpkg-query -Wf'${db:Status-abbrev}' emacs24  | grep -q '^i')); then
##  #apt-get -qy update
##  #apt-get install python-software-properties -y
##  ##add-apt-repository ppa:cassou/emacs
##  #apt-get update
##  ##apt-get install emacs24 emacs24-el emacs24-common-non-dfsg clojure -y
##  #apt-get install emacs24 emacs24-el emacs24-common-non-dfsg -y
##  else
##    echo System has emacs24
##fi
#
#sudo apt-get install git -y
#
if [ ! -f /home/vagrant/.emacs.d ]; then
  #cp /home/vagrant/src/.emacs /home/vagrant/.emacs
  cp -R /home/vagrant/src/emacs.d /home/vagrant/.emacs.d
	#git clone https://github.com/flyingmachine/emacs-for-clojure /home/vagrant/.emacs.d
  else
  echo System has .emacs
fi

sudo apt-get install openjdk-7-jre -y

if (! (/home/vagrant/bin/lein version 2> /dev/null | grep -q 'Leiningen')); then 
  chmod +x /home/vagrant/src/setup
  su -c "cd /home/vagrant/src && ./setup" vagrant 
  chown -R vagrant /home/vagrant/
  else
  echo System has Leiningen installed
fi

if [ ! -f /home/vagrant/.lein/profiles.clj ]; then
  cp /home/vagrant/src/lein/profiles.clj /home/vagrant/.lein/profiles.clj
  else
  echo System has .lein profile
fi

#echo 'XTerm*metaSendsEscape: true' >> ~/.Xresources
if [ ! -f /home/vagrant/~/.Xresources ]; then
  cp /home/vagrant/src/Xresources /home/vagrant/.Xresources
else
  echo System has .Xresources file
fi

#sudo update-java-alternatives -s java-1.7.0-openjdk-i386
sudo apt-get install vim -y
sudo apt-get install tmux -y
#sudo ufw disable

# pass figwheel port through firewall
sudo ufw allow 3449/tcp

