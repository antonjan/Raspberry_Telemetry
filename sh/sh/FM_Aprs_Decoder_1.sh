#Enabled demodulators: POCSAG512 POCSAG1200 POCSAG2400 EAS AFSK1200 AFSK2400 AFSK2400_2 HAPN4800 FSK9600 DTMF ZVEI CCIR SCOPEchild process 2467 died, status 256

sudo rtl_fm -M fm -f 144.80M -s 22050 -g 10 -l 250 | multimon -t raw /dev/stdin
