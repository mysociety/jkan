# mySociety Data Portal repo - running on JKAN [![Build Status](https://travis-ci.org/timwis/jkan.svg?branch=gh-pages)](https://travis-ci.org/timwis/jkan) [![Join the chat at https://gitter.im/timwis/jkan](https://badges.gitter.im/timwis/jkan.svg)](https://gitter.im/timwis/jkan?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
A lightweight, backend-free open data portal, powered by Jekyll

View at data.mysociety.org

## Local Development

Vagrant file will get to a state where jekyll will run a local server:

    $ vagrant up
    $ vagrant ssh  
    $ cd /vagrant
    $ script/server

This will then start the rendering process and serve on http://127.0.0.1:4000

Can't get the JS development side working entirely on vagrant at the moment, see https://github.com/timwis/jkan/wiki/Architecture for how this is *supposed* to work. 

## Theme

Jkan runs on Jekyll.

Local adaptions to mySociety theme are in sass folder - both that and 'theme/sass' are equally accessible to compiler - so no need for relative paths. 

Key template is templates/default.html - this then brings in various mysoc_ includes. 

Don't forget to `git submodule update --init --recursive` to pull down the mySociety styles

## Categories

Category information is stored in three places. 
 
1. References in datasets
2. Entries in _data/categories.yml (with additional info like logos, or if they are a highlighted category)
3. Markdown files in /_categories

The final set is generated from the first two to create the static pages for the category pages. 

This isn't directly supported by Github Jekyll, so you can generate the markdown files using:

    $ ruby script/generate_categories.rb
    
Or manually create the file when creating/modifying categories. 

