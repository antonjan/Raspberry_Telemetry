sudo /usr/sbin/gpsd -D 5 -N -n /dev/ttyACM0 &
sudo /usr/bin/timeout 11s /usr/bin/arecord -c1 -t wav -r 48000  --vumeter=mono -D hw:Loopback,1,0 -fS16_LE /home/pi/sh/bacar_cw.wav &
sudo /usr/bin/timeout 10s /usr/bin/cw -s a -d hw:Loopback,1,0 -t 1000 -v 50 -f /home/pi/sh/cw_text.txt
sleep 1
sudo /usr/bin/sox -v 0.9 -S /home/pi/sh/bacar_cw.wav /home/pi/sh/bacar_cw_sox.wav  rate -L -s 48000
sleep 1
sudo /home/pi/Downloads/rpitx_new/rpitx/pifm  /home/pi/sh/bacar_cw_sox.wav /home/pi/sh/bacar_cw_sox.wav.ft
sleep 1
sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i /home/pi/sh/bacar_cw_sox.wav.ft -m RF -f 144328 -c1

sleep 5
sudo /sbin/modprobe snd-aloop
sleep 2
sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i /home/pi/sh/cd_beacon6_48.wav.ft -m RF -f 144328 -c1
sleep 1
#sudo /home/pi/sh/crontab_bacar_aprs.sh
sleep 1
#/home/pi/sh/cron_aprs_gps_position.sh
