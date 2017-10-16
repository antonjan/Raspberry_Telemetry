#sudo gpsd -D 5 -N -n /dev/ttyACM0 &
#sleep 5
#sudo modprobe snd-aloop
#sleep 2
#sudo arecord -c1 -r48000 --vumeter=mono -D hw:Loopback,1,0 -fS16_LE - | csdr convert_i16_f | csdr gain_ff 1500 | csdr convert_f_samplerf 20350 | sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i- -m RF -f 144328 -c1

sudo arecord -c1 -r48000 --vumeter=mono -D hw:Loopback,1,0 -fS16_LE - | csdr convert_i16_f | csdr gain_ff 1500 | csdr convert_f_samplerf 22000 | sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i- -m RF -f 144328 -c1



