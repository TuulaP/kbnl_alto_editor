Cropper
---------

Allows for zooming and cropping images

To run the alto_edit software out of the box you must first:

0) Prereq imagemagick dev lib:

sudo apt-get install libmagick-dev

1) Install ruby and the following gems:

sudo apt-get install ruby gem

sinatra >= 1.1.2 (sudo gem2.5 install sinatra)

rmagick >= 2.13.1  (sudo gem2.5 install rmagick)


2) Run the following command

$ ruby2.5 -I. web.rb -p3000

