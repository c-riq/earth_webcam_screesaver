
# download image to temporary file
curl https://eumetview.eumetsat.int/static-images/latestImages/EUMETSAT_MSG_RGBNatColourEnhncd_FullResolution.jpg > world_tmp.jpg 

# water vapour http://oiswww.eumetsat.org/IPPS/html/latestImages/EUMETSAT_MSG_WV062_FullResolution.jpg
# vis http://oiswww.eumetsat.org/IPPS/html/latestImages/EUMETSAT_MSG_RGBNatColour_FullResolution.jpg
# convection http://oiswww.eumetsat.org/IPPS/html/latestImages/EUMETSAT_MSGIODC_RGBConvection_FullResolution.jpg
# snow http://oiswww.eumetsat.org/IPPS/html/latestImages/EUMETSAT_MSG_RGBSolarDay_FullResolution.jpg

# check if download worked then copy to actual screensaver image
file=world_tmp.jpg
minimumsize=90000
actualsize=$(wc -c <"$file")
if [ $actualsize -ge $minimumsize ]; then
    mv screensaver/* old/
    cat world_tmp.jpg > screensaver/world$(date +%s).jpg 
fi
