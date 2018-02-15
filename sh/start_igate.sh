#igate config
sudo /home/pi/Downloads/rtl-sdr/build/src/rtl_fm -p 30 -f 144.8M - | direwolf -c /home/pi/Downloads/direwolf/sdr.conf -r 24000 -D 1 - &
#Telemetry for beloon sending
#sudo /home/pi/Downloads/rtl-sdr/build/src/rtl_fm -p 30 -f 144.8M - |direwolf -c /home/pi/Downloads/direwolf/telemetry-toolkit/telem-balloon.conf -r 24000 -D1 - &
#sending a/d values
#sudo /home/pi/Downloads/rtl-sdr/build/src/rtl_fm -p 30 -f 144.8M - |direwolf -c /home/pi/Downloads/direwolf/telemetry-toolkit/telem-volts.conf -r 24000 -D 1 - &

#sudo csdr convert_i16_f | csdr gain_ff 1000 | csdr convert_f_samplerf 20833 | sudo rpitx -c1 -m RF -i - -f 144796|/home/pi/Downloads/rtl-sdr/build/src/rtl_fm -p 30 -f 144.8M - |direwolf -c /home/pi/Downloads/direwolf/telemetry-toolkit/telem-balloon.conf -r 24000 -D1 -
