#cat ../Downloads/fm_master/fm_transmitter-master/star_wars.wav|nc  192.168.10.128 8011 - 
#sudo rpitx -m RF -i fm.ft -f 145294  -c1
sudo rtl_fm -p 38 -s48000 -g 0 -l 3 -M fm -f 434400000 |csdr convert_i16_f | csdr gain_ff 38000 | csdr convert_f_samplerf 20330 | sudo rpitx -i- -m RF -f 145292 -c1
