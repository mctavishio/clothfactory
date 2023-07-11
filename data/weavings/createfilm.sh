ffmpeg -r 48 -y -f concat -safe 0 -i files.txt -c:v libx264 -vf "scale=w=1280:h=720:force_original_aspect_ratio=2,crop=1280:720,fps=24,format=yuv420p" film$(date "+%s").mp4
