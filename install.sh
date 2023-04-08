#!/bin/bash

username=h53
repo=github-key-gen

url="https://api.github.com/repos/$username/$repo/contents"
files=$(curl -s $url | grep -oE '\"download_url\":\s*\"[^\"]+\"' | sed -e 's/"download_url"://' -e 's/"//g')

folder="$(pwd)/$repo-temp"
if [ ! -d "$folder" ]; then
  mkdir "$folder"
fi

for file in $files
do
  echo "download" $(basename $file) to $folder/$(basename $file)
  curl -s -L -o "$folder/$(basename $file)" $file || (echo failed! && exit)
done

echo generate key...
cd $folder
./localrun.sh
cd .. 

echo "clean cache"
rm -rf $folder

echo "done"
