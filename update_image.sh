
# download image to temporary file
curl http://oiswww.eumetsat.org/IPPS/html/latestImages/EUMETSAT_MSG_RGBNatColour_LowResolution.jpg > world_tmp.jpg 

# check if download worked then copy to actual screensaver image
file=world_tmp.jpg
minimumsize=90000
actualsize=$(wc -c <"$file")
if [ $actualsize -ge $minimumsize ]; then
    cat world_tmp.jpg > screensaver/world.jpg 
fi
