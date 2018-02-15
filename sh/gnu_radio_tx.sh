#sudo nc -l 8011 | sudo rpitx -i- -m IQFLOAT -f 145294 -c1
while true; do (nc -l 8011; dd if=/dev/zero bs=4096 count=30); done | sudo rpitx -i- -m IQFLOAT -f 145259 -c1 
