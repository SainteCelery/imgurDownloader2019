## imgurDownloader2019

This is a set of bash scripts which automates downloading images and their descriptions from imgur.

![screenshot](/screenShots/00.png)

## Heartbeat

**2019.04.19 - tested and working**

## Features

-   NO API TOKEN NEEDED!!! Shhhh....don't tell them...
    
-   Download all images from a small (x ≤ 10 pix) gallery **imgurDownloader.sh**
    
-   Download all images from a large (∞ ≥ 11 pix) gallery **imgurDownloaderAll.sh**
    
-   Bulk download multiple galleries from a text list **imgurListDownloader.sh**
    
-   Download a given URL into a temp folder and display it in a specified viewer **imgurView.sh**
    

These Scripts Will:

-   Ignore duplicate galleries and duplicate files
    
-   Escape strange characters in titles
    
-   Store image descriptions in a separate text file
    

Note: This 2019 version eliminates the [imgurBufferView](https://github.com/truhlikfredy/imgurDownloader2015/blob/master/imgurBufferView.sh) script. **imgurBufferView**'s primary dependency, [xsel](https://github.com/kfish/xsel), requires a stupendous number of dependencies, itself, in order to operate. If you desire or require the functionality of **imgurBufferView**, please, use [imgurDownloader2015](https://github.com/truhlikfredy/imgurDownloader2015/tree/master) , which requires you to independently install **xsel**. Alternately, you can fork this version.

## Dependencies

-   **bash** (it's **bash** scripts, so...you need, y'know, **bash**...)
    
-   **jansson** (http://www.digip.org/jansson/)
    
    `git clone git@github.com:akheron/jansson.git`
    
-   **jshon** (http://kmkeen.com/jshon/)
    
    `git clone git@github.com:keenerd/jshon.git`
    

## imgurDownloader.sh

Basic script which will download all images at a given URL to a given directory, skipping duplicates.


## imgurDownloaderAll.sh

This script is for albums with more than 10 images. It will download all images from a specified album URL to your specified directory, skipping duplicates.

`imgurDownloaderAll.sh your/pic/directory http://imgur.com/a/yourweirdalbum`


## imgurListDownloader.sh

With this script you can download any number of galleries from a supplied text file. The file can be messy and it will still detect the imgur URLs. Rock on, slobs!

## imgurView.sh

This script allows you to download a given gallery into temporary folder and display it using **comix**. This is good when somebody wants to just see images outside of a web browser.

Use Cases:

-   Low resource computers and galleries with very large images (built-in image viewers are more efficient to view images than web browsers).
    
-   Somebody with limited or problematic internet access (preloads whole content).
    
-   Somebody who hates the imgur UI (...show of hands!...) and wants to view images outside their website.
    

**imgurView.sh** requires installation of **comix** and its dependencies. **Comix** is not included as part of any of the default imgurDownloader201whathaveyou packages. Please, visit the the **comix** repository for installation instructions: https://github.com/Joacchim/Comix

## Install.sh

Not really needed, it will just:

-   Download **jshon** and **jansson** and try to build them.
    
-   Copy scripts into **usr/local/opt/imgurDownloader** and place symbolic links in your **usr/local/bin** directory. If you do not have **usr/local/bin** in your **PATH** environment, the install script will fail.
    

Installation can be done by hand: just copy the **\*.sh** files somewhere where into your **PATH**. And make sure **jansson** and **jshon** (needed for all scripts) are installed.

## batchExample

This folder contains an example list and example syntax of how to download multiple galleries in one go.

## License

GPL (https://www.gnu.org/licenses/gpl.txt)
