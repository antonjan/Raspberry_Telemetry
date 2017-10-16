#sudo cw   -t 1000 -v 100 -f cw_text.txt
#sudo cw -s a -d hw:Loopback,0,0 -t 1000 -v 50 -f cw_text.txt
#sudo cw   -t 1000 -v 100 -f cw_text.txt
sudo modprobe snd-aloop
sleep 1
sudo timeout 27s arecord -c1 -t wav -r 48000  --vumeter=mono -D hw:Loopback,1,0 -fS16_LE /home/anton/sh/bacar_cw.wav &
sudo timeout 25s sudo cw -s a -d hw:Loopback,0,0 -t 1000 -v 50 -f cw_text.txt

