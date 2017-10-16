sudo modprobe snd-aloop &
sudo gpsd -D 5 -N -n /dev/ttyACM0 &
sudo /home/pi/Downloads/rtl-sdr/build/src/rtl_fm -p 30 -f 144.8M - |direwolf -c /home/pi/Downloads/direwolf/telemetry-toolkit/telem-balloon.conf -r 48000 -D1 - 
