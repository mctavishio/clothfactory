echo "// image files" > imageFiles.js
echo "const images = [" >> imageFiles.js
n=0; 
for file in $(ls *.jpg); do 
	filebase=${file%.*} 
	newfilename="$(printf "cloth_%03i%s" "$n" ".jpg")"; ((n++))
	echo "'$newfilename'," >> imageFiles.js 
	mv "$file" "$newfilename"
	#echo "'$file'," >> imageFiles.js 
done
echo "];" >> imageFiles.js
