#rtl_fm -f 145048467 -M fm -s 200000 -r 32000 -g 35 | direwolf -n 1 -r 32000 -b 16 -t 0 -
#sudo /home/pi/Downloads/rtl-sdr/build/src/rtl_fm -p 30 -f 144.8M - | direwolf -c /home/pi/Downloads/direwolf/sdr.conf -r 24000 -D 1 - &
sudo rtl_fm -f 144800000 -s 44100 -| direwolf -c ./bacar_direwalf.cfg -n 1 -r 44100 -b 16 -t 0 
