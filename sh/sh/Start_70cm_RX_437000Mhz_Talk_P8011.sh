#rtl_sdr -s 240000 -f 89500000 -g 20 - | csdr convert_u8_f | csdr fmdemod_quadri_cf | csdr fractional_decimator_ff 5 | csdr deemphasis_wfm_ff 48000 50e-6 | csdr convert_f_s16 | mplayer -cache 1024 -quiet -rawaudio samplesize=2:channels=1:rate=48000 -demuxer rawaudio -
#sudo rtl_fm -s 48000 -M fm -f 434400000 -p 0| csdr convert_f_s16 - | nc -vv 192.168.10.128 8011
#sudo rtl_fm -s 48000 -M fm -f 434400000 -p 0|  nc -vv 192.168.10.128 8011
