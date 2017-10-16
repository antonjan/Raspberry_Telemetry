#arecord -c1 -r48000 -D hw:Loopback,1,0 -fS16_LE - | csdr convert_i16_f | csdr gain_ff 7000 | csdr convert_f_samplerf 20833 | sudo /home/pi/Downloads/rpitx/rpitx/rpitx -i- -m RF -f 28400 -c1 
#fixed path
sudo arecord -c1 -r48000 -D hw:Loopback,1,0 -fS16_LE - | csdr convert_i16_f | csdr gain_ff 1200 | csdr convert_f_samplerf 48000 | sudo /home/pi/Downloads/rpitx/rpitx/rpitx -i- -m RF -f 144800 -c1
