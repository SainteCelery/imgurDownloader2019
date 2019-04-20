#!/bin/bash
#
# author:        Anton Krug
# date:          2015/10/05
# depending on:  http://kmkeen.com/jshon/ for JSON parsing
#
# edited by St.Ox on 2019.04.19
#
# imgurDownloader2019


#download everything to some predefined directory
DIR=~/Dropbox/docs/_pics/spaceNasa

if [ $# -eq 0 ]
then
    echo "No arguments supplied. Usage:"
    echo "imgurSpace.sh URLtoDownload"
    exit 1
fi

imgurDownloader.sh $DIR $1
