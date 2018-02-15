sudo gpsd -D 5 -N -n /dev/ttyACM0 &
sleep 5
sudo modprobe snd-aloop
sleep 2

