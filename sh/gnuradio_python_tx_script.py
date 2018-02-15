#!/usr/bin/env python
from gnuradio import gr
from gnuradio import analog
from grc_gnuradio import blks2
import subprocess

class top_block(gr.top_block):
    def __init__(self):
        gr.top_block.__init__(self)

        # Set parameters
        sample_rate = 32000
        ampl = 0.2

        # Generate a sine wave
        src = analog.sig_source_c(sample_rate, analog.GR_SIN_WAVE, 350, ampl)

        # Set the destination to nc to then send the samples to rpitx
        dst = blks2.tcp_sink(
            itemsize=gr.sizeof_gr_complex*1,
            addr="127.0.0.1",
            port=8011,
            server=False,
        )

        # Connect the source and destination
        self.connect(src, dst)

if __name__ == '__main__':

    # Set the target frequency
    freq = 144600

    # Spawn the processes, pipe them together, and run the GNURadio block
    try:
        nc_process = subprocess.Popen(["nc", "-l", "8011"], stdout=subprocess.PIPE)

        rpitx_process = subprocess.Popen(["sudo", "rpitx", "-m", "RF", "-i", "-", "-f", str(freq), "-c1"], stdin=nc_process.stdout)

        top_block().run()
    except KeyboardInterrupt:
        pass
