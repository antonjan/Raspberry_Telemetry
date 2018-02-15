sudo /usr/sbin/gpsd -D 5 -N -n /dev/ttyACM0 &
sleep 5
sudo /sbin/modprobe snd-aloop
sleep 2
sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i /home/pi/sh/cd_beacon6_48.wav.ft -m RF -f 144825 -c1
sleep 1
sudo /home/pi/sh/crontab_bacar_aprs.sh
sleep 1
/home/pi/sh/cron_aprs_gps_position.sh
