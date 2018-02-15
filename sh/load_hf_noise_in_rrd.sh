cd /home/pi/hf_noise/
sudo /home/pi/hf_noise/import_csv_into_rrd.pl "/home/pi/hf_noise/hf_monitoring_graph_`date '+%d-%m-%Y'`.cvs" 
#sudo /home/pi/hf_noise/creat_all_2day_graphs.sh
sudo /home/pi/hf_noise/all_day_graph.sh
#all_day_graph.sh
cd /home/pi/hf_noise/
sudo /home/pi/hf_noise/2y_hf_noise_graph.pl
sudo /home/pi/hf_noise/2m_hf_noise_graph.pl
sudo /home/pi/hf_noise/2w_hf_noise_graph.pl
sudo /home/pi/hf_noise/2d_hf_noise_graph.pl

#sudo /home/pi/hf_noise/all_2week_graph.sh
#sudo /home/pi/hf_noise/all_2month_graph.sh
#sudo /home/pi/hf_noise/all_2year_graph.sh
#echo "hf_noise_`date '+%d-%m-%Y'`.png"
#/home/pi/sh/create_thump_nail.sh
