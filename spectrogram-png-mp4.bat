@rem http://lukaprincic.si/development-log/ffmpeg-audio-visualization-tricks

@rem create a spectrogram as a single frame
ffmpeg -i %1 -lavfi "showspectrumpic=s=hd480:legend=1,format=yuv420p" %1.png || exit /b 1
 
@rem add png to audio - you need to know the length of audio
ffmpeg -loop 1 -i %1.png -i %1 -s hd480 -t 00:00:10 -pix_fmt yuv420p -b:a 360k -r:a 44100 %1.mp4 || exit /b 1
