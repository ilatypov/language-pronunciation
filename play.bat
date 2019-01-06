@rem Usage: [cygstart] play.bat ru-digits.wav

@rem https://trac.ffmpeg.org/ticket/6891
@rem set SDL_AUDIODRIVER=directsound or winmm
set SDL_AUDIODRIVER=winmm
ffplay -i %1
