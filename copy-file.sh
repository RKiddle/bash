#!/bin/bash

echo "Welcome to the script"
firstline=$(head -n 1 source/changelog.md)
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}
echo "You are building version" $version

echo "Do you want to make a chage to the version? Enter 1 (yes) or 0 (no) to exit."

read versioncontinue

if [ $versioncontinue -eq 1 ]
then
  echo "OK"
 
  for filename in source/*
  do
   
   
    if [ "$filename" != "source/secretinfo.md" ]
    then
      cp $filename build/. ; echo $filename "is being copied" 
      
    else
      echo $filename "is not being copied"
      
    fi 
  
 
  
  done
  echo "Build version $version contains:"
  ls build
  cd ..
else
  echo "Please come back when you are ready"
fi






