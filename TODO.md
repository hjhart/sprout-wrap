## TODO

These todos represent the things I've run manually since running sprout-wrap on clean install of Mavericks.

- [ ] Add alternate remote repositories to certain directories

        heroku git:remote -a lsc13
        OR
        git remote add heroku git@heroku.com:lsc13.git

- [ ] SSH Keys generated and added to heroku (or, use older keys)

        ssh-keygen
        heroku keys:add ~/.ssh/id_rsa.pub

- [ ] Ruby environment set up ready to go, including bundle installs on specific directories

        cd ~/workspace/lean_startup_13
        bundle install 

- [ ] App Store Installations
  * Simplenote
  * Pixelmator
  * Remote Desktop - VNC

- [ ] Something needs to happen to sync my phone numbers to the “Messages” app.

- [ ] Add gitx alias to path (https://github.com/rowanj/gitx/issues/269)

- [ ] Remove dock icons properly (https://github.com/pivotal-sprout/sprout/pull/194)

- [ ] Add a default ~/Library/Spelling/LocalDictionary to mavericks (Recipe exists, currently adding words to dictionary)

- [x] Disabled Gatekeeper

    http://itsallmacademic.com/2013/08/11/disable-gatekeeper-command-line/
    sudo spctl --master-disable

- [ ] Install ventrilo # Not possible unless there is a proper mirror?

- [ ] Set up automount for a NAS

     http://useyourloaf.com/blog/2011/01/24/using-the-mac-os-x-automounter.html
     http://hints.macworld.com/article.php?story=2001120201020569