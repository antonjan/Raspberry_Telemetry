 sudo aprs --callsign ZR6AIC --output - "10mw Beloon Beacon de ZR6AIC" | csdr convert_i16_f | csdr gain_ff 7000 | csdr convert_f_samplerf 20833 | sudo rpitx -m RF -i - -f 144325 -c1
