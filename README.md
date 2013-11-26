# sprout-wrap

[![Build Status](https://travis-ci.org/pivotal-sprout/sprout-wrap.png?branch=master)](https://travis-ci.org/pivotal-sprout/sprout-wrap)

Prepares a Mac running OS X Mountain Lion for Ruby development using [soloist](https://github.com/mkocher/soloist) and [Pivotal Workstation](https://github.com/pivotal/pivotal_workstation)

## Installation

### 1. Install XCode

[![Xcode - Apple](http://r.mzstatic.com/images/web/linkmaker/badge_macappstore-lrg.gif)](https://itunes.apple.com/us/app/xcode/id497799835?mt=12&uo=4)

### 2. Install Command Line Tools
  
	git

Generate and add a ssh key to github

	ssh-keygen

### 3. Clone the project
  
	mkdir workspace
	git clone git@github.com:hjhart/sprout.git
	git clone git@github.com:hjhart/sprout-wrap.git
  
### 4. Install soloist & and other required gems

	sudo gem install bundler —pre
	sudo bundle install
	sudo gem update --system 1.8.25

### 5. Run soloist
  
	bundle exec soloist
