

# Telemetry   T#005,199,000,255,073,123,01101001
# "Battery,Btemp,ATemp,Pres,Alt,Camra,Chut,Sun,10m,ATV"
sudo aprs -v --callsign ZR6AIC-4 --output - "Testing raspberry pi with rpitx" | csdr convert_i16_f | csdr gain_ff 1000 | csdr convert_f_samplerf 20833 | sudo /home/pi/Downloads/rpitx/rpitx/rpitx -c1 -m RF -i - -f 144796
