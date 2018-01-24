# mySociety Data Portal repo - running on JKAN [![Build Status](https://travis-ci.org/timwis/jkan.svg?branch=gh-pages)](https://travis-ci.org/timwis/jkan) [![Join the chat at https://gitter.im/timwis/jkan](https://badges.gitter.im/timwis/jkan.svg)](https://gitter.im/timwis/jkan?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
A lightweight, backend-free open data portal, powered by Jekyll

View at data.mysociety.org

##Local Development

Vagrant file will get to a state where jekyll will run a local server:

    $ vagrant up
    $ vagrant ssh  
    $ cd /vagrant
    $ ./run_locally.bash

This will then start the rendering process and serve on http://127.0.0.1:4000

Can't get the JS development side working entirely on vagrant at the moment, see https://github.com/timwis/jkan/wiki/Architecture for how this is *supposed* to work. 

##Theme

Jkan runs on Jekyll.

Local adaptions to mySociety theme are in sass folder - both that and 'theme/sass' are equally accessible to compiler - so no need for relative paths. 

Key tempate is templates/default.html - this then brings in various mysoc_ includes. 

Don't forget to `git submodule update --init --recursive` to pull down the mySociety styles


## Known untidyness

To force featured categories to the top of the category list on the dataset page, these slugs are referred to manually in \scripts\src\components\categories-filter.js

Ideally these would access the categories information to prioritise without hardcoding. 

