echo "starting Repeater"
sudo nc -l 8011 | csdr convert_i16_f | csdr gain_ff 8000 | csdr convert_f_samplerf 20833 | sudo rpitx -i- -m RF -f 145300 -c1&
sleep 5
sudo rtl_fm -s48000 -M fm -f 434400000 |nc  192.168.10.128 8011 -&
echo "repeater started"
