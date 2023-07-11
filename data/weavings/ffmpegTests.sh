ffmpeg -i film1688597615.mp4  -filter_complex "zoompan=z='zoom+0.002':d=25*4:s=1280x800" -pix_fmt yuv420p -c:v libx264 out.mp4

convert -size 400x400 xc:black \
          cloth003_18.jpeg  -geometry  +5+10  -composite \
          cloth003_19.jpeg  -geometry +35+100  -composite \
          cloth003_16.jpeg  -geometry +62+200  -composite \
          cloth003_20.jpeg  -geometry +10+300  -composite \
          compose.jpg


ffmpeg -i film1688597615.mp4 -i film1688783216.mp4 -filter_complex "[0:v][1:v] overlay=w/2:0:enable='between(t,0,20)'"  -pix_fmt yuv420p -c:a copy film$(date "+%s").mp4
