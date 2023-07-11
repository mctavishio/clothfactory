rm combined*.mp4
ffmpeg -i film1689027610.mp4 -i film1688783329.mp4 -filter_complex "overlay=x=0:y=H*.1" combined0.mp4
ffmpeg -i combined0.mp4 -vf vflip -c:a copy combined0a.mp4
ffmpeg -i combined0a.mp4 -i film1688783216.mp4 -filter_complex "overlay=x=W*.2:y=H*.2" combined1.mp4
ffmpeg -i combined1.mp4 -vf vflip -c:a copy combined1a.mp4
ffmpeg -i combined1a.mp4 -i combined0.mp4 -filter_complex "overlay=x=W*.4:y=H*.3" combined2.mp4
ffmpeg -i combined2.mp4 -vf vflip -c:a copy combined2a.mp4
ffmpeg -i combined2a.mp4 -i combined1.mp4 -filter_complex "overlay=x=W*.6:y=H*.4" combined3.mp4
ffmpeg -i combined3.mp4 -vf vflip -c:a copy combined3a.mp4
ffmpeg -i combined3a.mp4 -i combined2.mp4 -filter_complex "overlay=x=W*.8:y=H*.5" combined4.mp4
echo "bash combined4.mp4"


