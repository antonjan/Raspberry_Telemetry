#sudo cw   -t 1000 -v 100 -f cw_text.txt
sudo timeout 11s arecord -c1 -t wav -r 48000  --vumeter=mono -D hw:Loopback,1,0 -fS16_LE /home/pi/sh/bacar_cw.wav &
sudo timeout 10s sudo cw -s a -d hw:Loopback,0,0 -t 1000 -v 50 -f cw_text.txt
