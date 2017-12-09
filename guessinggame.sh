#!/usr/bin/env bash
# File: guessinggame.sh

function fid {
	ls -1 | wc -l
}

echo "Please guess how many files are in the current directory, then press Enter:"
read guess

if [[ $guess -gt fid ]] 
then
	echo "$guess is too high."
	echo "Please try again." 
	
elif [[ $guess -lt fid ]]
then
	echo "$guess is to low."
	echo "Please try again." 
		
else [[ $guess -eq fid ]]
	echo "Congratulation! Your guess is correct!"
fi
