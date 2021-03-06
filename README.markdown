Bundlizer
================================================================================
The Bundlizer is RubyGems and Bundler apps management tool from the command line. _DO NOT USE sudo_

[![Build Status](https://secure.travis-ci.org/Tomohiro/bundlizer.png)](https://secure.travis-ci.org/Tomohiro/bundlizer)

![bundlizer banner](http://f.cl.ly/items/281V1j3N221N2B433p2X/bundlizer.png)

---

Requirements
--------------------------------------------------------------------------------

- OSX or Ubuntu
- Git
- Ruby 1.9.3+
- RubyGems 1.8+
- Bundler 1.1+


Getting Started
--------------------------------------------------------------------------------

### Installation

To install the Bundlizer, open a terminal and run this command

    $ curl -L git.io/bundlizer-install | sh

Source `~/.bundlizer/etc/bashrc` in your `~/.bash_profile` or `~/.zshenv`

    $ echo 'source $HOME/.bundlizer/etc/bashrc' >> ~/.bash_profile

Restart your shell or `exec $SHELL`


### Upgrade the Bundlizer

    $ bundlizer upgrade


### Uninstall the Bundlizer

    $ rm -rf ~/.bundlizer


Usage
--------------------------------------------------------------------------------

### Install Gem apps from RubyGems.org

Install (e.g. Ruby on Rails: https://rubygems.org/gems/rails)

    $ bundlizer install rails
    Searching in RubyGems...
    Fetching: i18n-0.6.0.gem (100%)
    Fetching: multi_json-1.3.6.gem (100%)
    Fetching: activesupport-3.2.6.gem (100%)
    Fetching: builder-3.0.0.gem (100%)
    Fetching: activemodel-3.2.6.gem (100%)
    Fetching: rack-1.4.1.gem (100%)
    Fetching: rails-3.2.6.gem (100%)
    ..snip..
    Successfully installed builder-3.0.0
    Successfully installed activemodel-3.2.6
    Successfully installed rack-1.4.1
    Successfully installed rails-3.2.6
    26 gems installed
    It was installed 'erubis' into /home/tomohiro/.bundlizer/apps/erubis
    It was installed 'rackup' into /home/tomohiro/.bundlizer/apps/rackup
    It was installed 'rails' into /home/tomohiro/.bundlizer/apps/rails
    It was installed 'rake2thor' into /home/tomohiro/.bundlizer/apps/rake2thor
    It was installed 'thor' into /home/tomohiro/.bundlizer/apps/thor
    It was installed 'tilt' into /home/tomohiro/.bundlizer/apps/tilt
    It was installed 'tt' into /home/tomohiro/.bundlizer/apps/tt



You can start a rails project as usual

    $ rails -v
    Rails 3.2.6
    $ rails new awesome-project
    $ cd awesome-project
    $ bundle install --path gems
    $ rails s
    => Booting WEBrick
    => Rails 3.2.6 application starting in development on http://0.0.0.0:3000
    => Call with -d to detach
    => Ctrl-C to shutdown server
    [2012-07-12 19:54:49] INFO  WEBrick 1.3.1
    [2012-07-12 19:54:49] INFO  ruby 1.9.3 (2012-04-20) [i686-linux]
    [2012-07-12 19:54:49] INFO  WEBrick::HTTPServer#start: pid=1479 port=3000


### Install Bundler apps from GitHub repository

Install (e.g. heroku: `git://github.com/heroku/heroku.git`)

    $ bundlizer install heroku/heroku
    Cloning into heroku...
    remote: Counting objects: 9595, done.
    remote: Compressing objects: 100% (3304/3304), done.
    remote: Total 9595 (delta 6435), reused 9094 (delta 5994)
    Receiving objects: 100% (9595/9595), 1.18 MiB | 316 KiB/s, done.
    Resolving deltas: 100% (6435/6435), done.

    Start bundle installing to /home/tomohiro/.bundlizer/bundles/heroku
    Fetching gem metadata from http://rubygems.org/.........
    Installing rake (0.9.2)
    ..snip..
    Using heroku (2.18.1) from source at .
    ..snip..
    Installing webmock (1.7.7)
    Using bundler (1.1.rc.7)
    Your bundle is complete! It was installed into ./vendor/bundle
    It was installed `heroku` into /home/tomohiro/.bundlizer/apps/heroku

You don't need `bundle` command. You can use `<cmd>` instead of `bundle exec <cmd>`

    $ type heroku
    heroku is /home/tomohiro/.bundlizer/apps/heroku
    $ heroku version
    heroku-gem/2.19.0



### Show installed apps

    $ bundlizer list --verbose
    Gem/Bundler apps installed by the Bundlizer:

     * foreman (rubygems.org: http://rubygems.org/gems/foreman)
          apps: foreman,rake2thor,thor
     * guard (git://github.com/guard/guard.git)
         apps: guard
     * heroku (git://github.com/heroku/heroku.git)
         apps: heroku
     * pry (git://github.com/pry/pry.git)
         apps: pry
     * rails (rubygems.org: http://rubygems.org/gems/rails)
          apps: erubis,rackup,rails,rake2thor,thor,tilt,tt
     * yard (git://github.com/lsegal/yard.git)
         apps: yard,yardoc,yri


### Update apps

Update the named app

    $ bundlizer update heroku

Update all apps

    $ bundlizer update


### Uninstall

    $ bundlizer uninstall heroku
    uninstall: remove app 'heroku'? (yes/no) yes
    rm -f /home/tomohiro/.bundlizer/apps/heroku
    rm -rf /home/tomohiro/.bundlizer/bundles/heroku
    It was Uninstalled 'heroku'



Tips
--------------------------------------------------------------------------------

### Backup and Restore app list

Backup installed app list

    $ bundlizer list | tail -n +3 > ~/bundlizer_installed_apps

Reinstall app from backup installed app list

    $ cat ~/bundlizer_installed_apps | xargs bundlizer install


---

LICENSE
--------------------------------------------------------------------------------

&copy; 2012 Tomohiro, TAIRA.
This project is licensed under the MIT license.
See LICENSE for details.
