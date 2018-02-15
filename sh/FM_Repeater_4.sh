#cat ../Downloads/fm_master/fm_transmitter-master/star_wars.wav|nc  192.168.10.128 8011 - 
#sudo rtl_fm -s 2400000 -g 0 -l 3 -M fm -f 434400000 |csdr convert_i16_f | csdr gain_ff 12000 | csdr convert_f_samplerf 20330 | sudo rpitx -i- -m RF -f 145300 -c1


sudo rtl_sdr -s 2400000 -f 434400000 -g 20 - | csdr convert_u8_f | csdr shift_addition_cc `python -c "print float(145000000-145350000)/2400000"` | csdr fir_decimate_cc 50 0.005 HAMMING | csdr fmdemod_quadri_cf | csdr limit_ff | csdr deemphasis_nfm_ff 48000 | csdr fastagc_ff | csdr convert_f_s16 | rpitx -i- -m IQFLOAT -f 145300 -c 1
