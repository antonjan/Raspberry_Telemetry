sudo sudo rtl_fm -p 38 -s48000 -E offset -E DC -g 10 -l90  -M fm -f 434400000 |csdr convert_i16_f | csdr gain_ff 39000 | csdr convert_f_samplerf 20330 | sudo rpitx -i- -m RF -f 145291 -c1
