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
   echo $filename
   
  done
  cd build/
  echo "Build version $version contains:"
  ls
   if [ "$filename" == “source/secretinfo.md” ]
    then
      echo $filename "is not being copied"
    else
      echo $filename "is being copied"
      cp $filename build/.
    fi 
  
  
else
  echo "Please come back when you are ready"
fi


