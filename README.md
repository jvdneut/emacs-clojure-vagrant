# emacs-clojure-vagrant

The purpose of this project is to create a reproducable environment for learning to write Clojure(Script)

I know Vim, but want to learn Emacs, so I will spend more time setting up a full Emacs environment.

### DONE
* Set up correct version of Java
* Set up Leinigen `lein`
* Set up Git
* Set up Emacs
	* With settings from Clojure for the Brave and True website
		* TODO link
* Set up Vim
* Set up tmux
* Opened up port 3449 for browser to connect to Figwheel

### TODO
* Manage to connect CIDER to Figwheel
	* `lein new figwheel test` to create `test` project
	* `tmux` to run tmux
	* `lein figwheel` to run figwheel
	* `ctrl+b c` to create a new panel in tmux
	* `emacs .`
	* `alt+x cider-jack-in` to connect to the figwheel REPL?
* Set up Vim settings
	* Fireplace etc
* Set up a TDD environment for Emacs and Clojure

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
