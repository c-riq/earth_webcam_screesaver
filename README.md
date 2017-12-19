Shell script to update the almost "live"(it is updated every 30 min) sattelite image of earth by Meteosat.
Nice to have it set as a screesaver.
<br />
Run crontab -e to set the the refresh interval. 30 minutes works well since it is updated by eumetsat.int every 30 minutes.
make sure to adjust the path:<br />
'''
*/30 * * * *  cd ~/background_images/world && ./update_image.sh
'''
