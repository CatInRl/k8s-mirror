#!/bin/sh

for i in `cat images.txt`
do
	content="FROM $i"
	path=$(echo $i | awk -F'/' '{print $NF}' | tr ":" "/")
	mkdir -p $path
	echo "$content" > ${path}/Dockerfile
done
