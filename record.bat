@rem Usage: [cygstart] record.bat ru-digits

ffmpeg -list_devices true -f dshow -i dummy
@rem [...]
@rem [dshow @ 00000000005d1140] DirectShow audio devices
@rem [dshow @ 00000000005d1140]  "Microphone Array (Realtek High "
@rem [dshow @ 00000000005d1140]     Alternative name "@device_cm_{33D9A762-90C8-11D0-BD43-00A0C911CE86}\Microphone Array (Realtek High "
@rem [...]

ffmpeg -f dshow -i audio="Microphone Array (Realtek High " %1.wav

