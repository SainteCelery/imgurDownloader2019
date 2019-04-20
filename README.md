imgurDownloader2019
-------------------

This is set of bash scripts which automates downloading images and their descriptions from imgur.

![screenshot](/screenShots/00.png)


Heartbeat
---------

**2019.04.19 - tested and working**


Features
--------

- Will download all images from single gallery **imgurDownloader.sh**
- Bulk downloader which download multiple galleries form a list (given in a filename). **imgurListDownloader.sh**
- Will download given URL into temp folder and display it in specified viewer **imgurView.sh**
- Will ignore duplicate galleries and duplicate files.
- Escapes strange characters in titles.
- Stores descriptions to images to separate text file.

* Note : This version eliminates the ![imgurBufferView](https://github.com/truhlikfredy/imgurDownloader2015/blob/master/imgurBufferView.sh) script. imgurBufferView's primary dependency, ![xsel](https://github.com/kfish/xsel), requires a stupendous number of dependencies, itself, in order to operate. If you desire or require the functionality of imgurBufferView, please, use ![the previous iteration](https://github.com/truhlikfredy/imgurDownloader2015/tree/master), which requires you to independently install **xsel**, or fork this version.   


Dependencies
------------

- bash (it's bash scripts)

- jansson (http://www.digip.org/jansson/)
'git clone git@github.com:akheron/jansson.git'

- jshon (http://kmkeen.com/jshon/)
'git clone git@github.com:keenerd/jshon.git'



imgurDownloader.sh
------------------

Basic script which will download all images on given URL to given directory. (will skip duplicates).


imgurDownloader.sh
------------------

This script is for albums with more than 10 images. It will download all images on given URL to given directory, skipping duplicates.

Usage: 'imgurDownloader.sh your/download/directory http://imgur.com/a/yourweirdalbum'


imgurListDownloader.sh
----------------------

Will download x number of galleries from supplied text file (the file can be messy and it will still detect the imgur URLs).


imgurView.sh
------------

Will download a given gallery into temporary folder and display it using **comix**. This is good when somebody wants to just watch the images outside web-browser.

It's beneficial for:
- Low resource computers and galleries witch very large images (built-in image viewers are more efficient to view images than web browsers).
- Somebody with limited or problematic internet access (preloads whole content).
- Somebody who hates the imgur UI and wants to view images outside their website.

This script requires installation of **comix** and its dependencies. **Comix** is not included as part of the default imgurDownloader2019 package. Please, visit the the **comix** repository for installation instructions:
https://github.com/Joacchim/Comix


Install.sh
----------

Not really needed, it will just:
- Download **jshon** and **jansson** and will try to build them.
- Copy scripts into **usr/local/opt/imgurDownloader** and place symbolic links in your **usr/local/bin** directory. If you do not have **usr/local/bin** in your **PATH** environment, the install script will fail.

Installation can be done by hand: just copy the **\*.sh** files somewhere where into your **PATH**. And make sure **jansson** and **jshon** (needed for all scripts) are installed.


batchExample
------------

This folder contains an example list and example syntax of how to download multiple galleries in one go.


License
-------

GPL (https://www.gnu.org/licenses/gpl.txt)
