sudo arecord -c1 -r48000 -D hw:Loopback,1,0 -fS16_LE - | csdr convert_i16_f | csdr gain_ff 700 | csdr convert_f_samplerf 20330 | sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i- -m RF -f 144800 -c1
