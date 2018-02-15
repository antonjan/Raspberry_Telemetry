#!/bin/bash
#install this to use the following sudo apt-get install imagemagick
#install apt-get install imageinfo
#compiled c library /home/pi/Downloads/imageinfo/imageinfo
#identify -format '%w %h' hf_noise_16-08-2017.png
for file in /var/www/hf_noise/images/*.png
do
  # next line checks the mime-type of the file
  IMAGE_TYPE=`file --mime-type -b "$file" | awk -F'/' '{print $1}'`
 echo $IMAGE_TYPE
  if [ "x$IMAGE_TYPE" == "ximage" ]; then

    WIDTH=`identify -format %w "$file"`      # obtaining the image width
    HEIGHT=`identify -format %H "$file"`    # obtaining the image height
echo with $WIDTH
echo high $HEIGHT 

    # If the image width is greater that 200 or the height is greater that 150 a thumb is created
    if [ $WIDTH -ge  201 ] || [ $HEIGHT -ge 151 ]; then
       #This line convert the image in a 200 x 150 thumb
       convert -sample 200x150 "$file" "$(dirname "$file")/thumb/thumb_$(basename "$file")"
echo "$file" "$(dirname "$file")/thumb/thumb_$(basename "$file")" 
    fi
  fi
done

