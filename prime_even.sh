#!/bin/bash

# to check if a number is prime or not

check_prime_num() {
    if [ ${1} -gt 2 ]; then
    a=2
    while [ $a -lt $1 ]
    do
        if [ `expr $1 % $a` -eq 0 ]; then
            echo "$1 is not a prime number"
             a=`expr $a + 1` 
             break
        else
            echo "$1 is a prime number"
            break
        fi 
    done
    else 
        echo "$1 is a prime number"
    fi
}

read num_from_user
check_prime_num $num_from_user

# to check if a number is odd or even

check_odd_eve() {
    if [ `expr $1 % 2` -eq 0 ]; then
        echo "$1 is an even number"
    else
        echo "$1 is an odd number"
    fi
}

read num_from_user
check_odd_eve ${num_from_user}

