ffplay -f lavfi "amovie=%1, asplit [a][out1]; [a] showspectrum=s=480x480:legend=1 [out0]"
