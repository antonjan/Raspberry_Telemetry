sudo /home/pi/Downloads/heatmap/rtl-sdr-misc/heatmap/heatmap.py --ytick 5m --palette charolastra "/home/pi/hf_noise/hf_monitoring_`date '+%d-%m-%Y'`.cvs" /var/www/hf_noise/images/hf_noise_`date '+%d-%m-%Y'`.png
#echo "hf_noise_`date '+%d-%m-%Y'`.png"
/home/pi/sh/create_thump_nail.sh
