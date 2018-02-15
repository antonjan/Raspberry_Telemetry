#TXDELAY 60
#TXTAIL 120
sudo /home/pi/Downloads/rtl-sdr/build/src/rtl_fm -p 30 -f 144.8M - |sudo direwolf -x -c /home/pi/Downloads/direwolf/telemetry-toolkit/telem-balloon.conf  -D1 -

