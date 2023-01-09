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
                result+=$(cube $remainder);
                onum=onum/10;


        done
        echo $result
elif (( args >= 2))
then
        echo "Too many argumentet";
fi
