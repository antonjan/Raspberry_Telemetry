#sudo gpsd -D 5 -N -n /dev/ttyACM0 &
sudo modprobe snd-aloop
sleep 2
#sudo arecord -c1 -r48000 -D hw:Loopback,1,0 -fS16_LE - | csdr convert_i16_f | csdr gain_ff 700 | csdr convert_f_samplerf 20330 | sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i- -m RF -f 144800 -c1
sudo arecord -c1 -r48000 -D hw:Loopback,1,0 -fS16_LE - | csdr convert_i16_f | csdr gain_ff 500 | csdr convert_f_samplerf 20330 | sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i- -m RF -f 144800 -c1

#sudo arecord -c1 -r48000 -D hw:Loopback,1,0 -fS16_LE - | csdr fir_decimate_cc 50 0.005 HAMMING | csdr fmdemod_quadri_cf | csdr limit_ff | csdr deemphasis_nfm_ff 48000 | csdr fastagc_ff | csdr convert_i_s16 | csdr gain_ff 500 | csdr convert_f_samplerf 20330 | sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i- -m RF -

