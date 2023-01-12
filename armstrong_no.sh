#!/bin/bash

cube() { echo "$(( $1 * $1 * $1 ))"; }

args=$#

if (( args == 0))
then
        echo "Usage: /armstrong.sh <number>";
elif (( args == 1))
then
        num=$1
        onum=$num
        while (( onum != 0))
        do
                remainder=$((onum % 10));
                result=`expr $result + $(cube $remainder)`;
                onum=$onum/10;
        done
        if (( $result == $num ))
        then
                echo "$num is a armstrong number.";
        else
                echo "$num is not a armstrong number.";
        fi
elif (( args >= 2))
then
        echo "Too many argumentet";
fi
