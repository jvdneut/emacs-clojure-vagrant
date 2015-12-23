# emacs-clojure-vagrant

The purpose of this project is to create a reproducable environment for learning to write Clojure(Script)

I know Vim, but want to learn Emacs, so I will spend more time setting up a full Emacs environment.

Based on bits from:
* http://stackoverflow.com/questions/16872231/vagrant-clojure-emacs
* https://github.com/Seajure/emacs-clojure-vagrant

### DONE
* Set up correct version of Java
* Set up Leinigen `lein`
* Set up Git
* Set up Emacs
	* With **slightly modified** settings from Clojure for the Brave and True website
		* https://github.com/flyingmachine/emacs-for-clojure
		* TODO fork the settings in a separate repository?
	* Install latest version of CIDER (update lein profile)
* Set up Vim
* Set up tmux
* Opened up port 3449 for browser to connect to Figwheel
* Changed Vagrant box to be newer version of Ubuntu
* Added Vagrant script to install Emacs 24.5 from source using linuxbrew

### TODO
* Emacs
	* Manage to connect CIDER to Figwheel
		* `lein new figwheel test` to create `test` project
		* `tmux` to run tmux
		* `lein figwheel` to run figwheel
		* `ctrl+b c` to create a new panel in tmux
		* `emacs .`
		* `alt+x cider-jack-in` to connect to the figwheel REPL?
	* Install clj-refactor
	* Set up a TDD environment
* Set up Vim settings
	* Fireplace etc
* Learn Clojure ;-)

### Option -> Meta key
In order to work with Emacs you have to map the Option/Alt key to act as the meta key in the terminal
* On OS X
	* iTerm2
		* Profiles -> Keys -> Left option key acts as "+Esc"
		* Profiles -> Keys -> Right option key acts as "+Esc"
	* Terminal
		* Profiles -> Keyboard -> Use Option as Meta key
* On Windows
	* TODO
