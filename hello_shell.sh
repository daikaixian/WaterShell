#!/bin/bash

#My hello shell script.

echo "Hello Shell. I like you."

alias le="ls -l"


today() {
    echo -n "Today's date is: "
    date +"%A, %B %-d, %Y"
}

today

