sudo nc -l  7355 | aplay -D hw:0 -r 48k -f S16_LE -t raw -c 1
