#!/bin/bash

echo "please enter a number:"
read number

if [ $((number % 2 )) = "0" ]; then
	echo "$number is odd"
else
	echo "$number is even"
fi
