set 'overlay_old, overlay = 10:200'
set 'overlay, overlay=x=10:y=H-h-10,overlay=x=W-w-10:y=H-h-10'
ffmpeg -i film1689027610.mp4 -i film1688783329.mp4 -i film1688783216.mp4 -filter_complex "overlay=x=W*10:y=H-10,overlay=x=W*20:y=H-100" combined.mp4


ffmpeg -i film1689027610.mp4 -i film1688783329.mp4 -filter_complex "
nullsrc=size=800x800 [background];
[0:v] setpts=PTS-STARTPTS, scale=10x10 [left];
[1:v] setpts=PTS-STARTPTS, scale=10x10 [right];
[background][left]       overlay=shortest=1       [background+left];
[background+left][right] overlay=shortest=1:x=100 [left+right]
