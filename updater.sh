#!/bin/bash
current_dir=$(pwd)
echo "Current dir : $current_dir"
printf "Enter another path : "
read path
echo "your path is : $path"
echo "Moving to directory..."
sleep 5
cd $path
printf "Enter a filename : "
read filename
echo I\'am searching for $filename...
sleep 5
#ls -l | grep $filename
result=$(ls *.deb | grep $filename)
echo $result
read -p "Do you want to install/update? (y/n) " RESP
if [ "$RESP" = "y" ]; then
    echo "Glad to hear it"
    sudo apt install ./$result
else
  echo "I will not install/update nothing..."
fi
