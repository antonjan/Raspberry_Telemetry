#Creating data for Image
sudo /usr/local/bin/rtl_power -d0 -D2 -f1M:30M:10K -1 -g 50 >> "/home/pi/hf_noise/hf_monitoring_`date '+%d-%m-%Y'`.cvs"
sleep 15
sudo /usr/local/bin/rtl_power -d0 -D2 -f1M:30M:1M -1 -g 50 >> "/home/pi/hf_noise/hf_monitoring_graph_`date '+%d-%m-%Y'`.cvs" 
