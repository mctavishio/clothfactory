echo "// image files" > imageFiles.js
echo "const images = [" >> imageFiles.js
for file in $(ls *.jpeg); do 
	n=${file%.*} 
	echo "'$n.jpg'," >> imageFiles.js 
	#echo "'$file'," >> imageFiles.js 
done
echo "];" >> imageFiles.js
