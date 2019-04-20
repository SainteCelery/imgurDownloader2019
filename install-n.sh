#!/bin/bash
#
# author:        Anton Krug
# date:          2015/10/05
# depending on:  http://kmkeen.com/jshon/ for JSON parsing
#
# edited by St.Ox on 2019.04.19
#
# imgurDownloader2019


PREFIX=usr/local/opt/imgurDownloader

FILE=imgurDownloader.sh
ALLFILE=imgurDownloaderAll.sh
BATCHFILE=imgurListDownloader.sh
EXAMPLEFILE=imgurSpace.sh
VIEWFILE=imgurView.sh

echo
echo --------  dependencies: compiling and installing jshon -----------
echo

if hash jshon 2>/dev/null; then
  echo "Looks 'jshon' is already present, skipping installation"
else

  git clone https://github.com/akheron/jansson.git  #getting dependancies of dependancies

  git clone https://github.com/keenerd/jshon.git  # getting source code

  #compiling and installing dependancies
  mkdir jshon > /dev/null 2>&1
  cd jshon
  make
  sudo make install
  cd ..
  rm -rf jshon/     # removing the jshon source directory
fi

echo
echo ------------------ installing imgurDownloader -------------------
echo

#making all executable
chmod a+x $FILE $ALLFILE $BATCHFILE $EXAMPLEFILE $VIEWFILE batchExample/_runBatchExample.sh

#copy the file to the target
sudo -s -- "mkdir -p $PREFIX && cp $FILE $PREFIX/$FILE && cp $ALLFILE $PREFIX/$ALLFILE && cp $BATCHFILE $PREFIX/$BATCHFILE && cp $VIEWFILE $PREFIX/$VIEWFILE"


echo

echo "Creating symbolic link: usr/local/bin/$FILE"
mkdir usr/local/bin 1>/dev/null 2>&1
ln -s $PREFIX/$FILE usr/local/bin/$FILE 1>/dev/null 2>&1

echo "Creating symbolic link: usr/local/bin/$ALLFILE"
ln -s $PREFIX/$ALLFILE usr/local/bin/$ALLFILE 1>/dev/null 2>&1

echo "Creating symbolic link: usr/local/bin/$BATCHFILE"
ln -s $PREFIX/$BATCHFILE usr/local/bin/$BATCHFILE 1>/dev/null 2>&1

echo "Creating symbolic link: usr/local/bin/$VIEWFILE"
ln -s $PREFIX/$VIEWFILE usr/local/bin/$VIEWFILE 1>/dev/null 2>&1

echo "Copying example: usr/local/bin/$EXAMPLEFILE"
cp $EXAMPLEFILE usr/local/bin/$EXAMPLEFILE 1>/dev/null 2>&1

echo
echo "Achtung!"
echo "If you do not have usr/local/bin in your path these files will not be found; you need to add usr/local/bin to your PATH enviroment variable"
echo
