#!/bin/bash

WP_FOLDER="$HOME/Wallpapers/"
ID=$(echo $1 | cut -d '=' -f 2 | cut -d '&' -f 1)
cd $WP_FOLDER

URL="https://steamcommunity.com/sharedfiles/filedetails/?id=$ID"

title=$(curl "$URL" | grep "class=\"workshopItemTitle\"" | cut -d '>' -f 2 | cut -d '<' -f 1 | sed -e 's/[^A-Za-z0-9._-]/_/g')

#this gets the thumbnail if you need it
#curl $(curl "$1" | grep "class=\"workshopItemPreviewImageEnlargeable\"" | awk -F 'src=' '{print $2}' | cut -d '"' -f 2) > $WP_FOLDER$title.jpg

curl "$(curl -X POST http://steamworkshop.download/online/steamonline.php -d 'item='$(echo $URL | awk -F 'id=' '{print $2}')'&app=431960' | awk -F 'href=' '{print $2}' | cut -d \' -f 2)" > $title.zip
unzip -p $title.zip \*.mp4 > $title.mp4
rm $title.zip
