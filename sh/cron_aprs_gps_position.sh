sudo timeout 10s arecord -c1 -t wav -r 48000  --vumeter=mono -D hw:Loopback,1,0 -fS16_LE /home/pi/sh/direwalf.wav &
sudo timeout 9s direwolf -c /home/pi/Downloads/direwolf/telemetry-toolkit/telem-balloon_2.conf
sleep 1
sudo sox -v 0.3 -S /home/pi/sh/direwalf.wav /home/pi/sh/direwalf_sox.wav  rate -L -s 48000
sleep 1
sudo /home/pi/Downloads/rpitx_new/rpitx/pifm  /home/pi/sh/direwalf_sox.wav /home/pi/sh/direwalf_sox.wav.ft
sleep 1
sudo /home/pi/Downloads/rpitx_new/rpitx/rpitx -i /home/pi/sh/direwalf_sox.wav.ft -m RF -f 144801 -c1



