
sudo aprs  --callsign ZR6AIC-3 --output - ":EMAIL    :anton.janovsky@gmail.com Email with Raspberry pi" | csdr convert_i16_f | csdr gain_ff 1000 | csdr convert_f_samplerf 20833 | sudo /home/pi/Downloads/rpitx/rpitx/rpitx -c1 -m RF -i - -f 144800
