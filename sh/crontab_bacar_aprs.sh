#
sudo aprs -c ZR6AIC -o /home/pi/sh/aprs_tes.wav "10mW experimental Baloon system de ZR6AIC"
sleep 1
sudo sox -S  /home/pi/sh/aprs_tes.wav /home/pi/sh/aprs_tes_sox.wav  rate -L -s 48000
sleep 1
sudo /home/pi/Downloads/rpitx_new/rpitx/pifm  /home/pi/sh/aprs_tes_sox.wav /home/pi/sh/aprs_tes.wav.ft
sleep 1
sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i /home/pi/sh/aprs_tes.wav.ft -m RF -f 144800 -c1
