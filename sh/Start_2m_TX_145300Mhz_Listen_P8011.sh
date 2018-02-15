#sudo nc -l 8011 | csdr convert_i16_f | csdr gain_ff 7000 | csdr convert_f_samplerf 20833 | sudo rpitx -i- -m RF -f 145300 -c1
sudo nc -l 8011 | sudo rpitx -i- -m RF -f 145300 -c1
