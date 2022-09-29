#!/bin/bash
echo "input a number"
read a
f=1
while [ $a -gt 1 ] 
do
	f=$((f * a))
	a=$((a - 1))
done
echo $f 
