#!/bin/bash

# Write a Bash script that will act as a simple calculator for add, subtract, multiply and divide.
# Each operation should have its own function.
# The user should give 3 arguments when executing the script
# Any of the three methods for bash arithmetic, ($((..)), let, or expr) may be used.

#addition with 3 arguments
add() {
    echo "First parameter: $1"
    echo "Second parameter: $2"
    echo "The sum of $1 and $2 is: $(( $1 + $2 ))"
}

# add $1 $2 $3

# subtraction with 3 arguments
sub(){
    echo "First parameter: $1"
    echo "Second parameter: $2"
    echo "The difference of $1 and $2 is: $(( $1 - $2 )) "
    
}

# sub $1 $2 $3

# #multiplication with 3 arguments`
multiplication(){
    echo "First parameter: $1"
    echo "Second parameter: $2"
    echo "The product of $1 and $2 is: $(( $1 * $2 * $3 ))"
}

# multiplication $1 $2 $3

# #division with 3 arguments
division(){
    echo "First parameter: $1"
    echo "Second parameter: $2"
    echo "scale=2; $1 / $2 " | bc
}

# division $1 $2 $3

# The user should give 3 arguments when executing the script:
# - The first should be one of the letters a, s, m, or d to specify which math operation.
# - The second and third arguments should be the numbers that are being operated on.

#  The script should detect for bad or missing input values and display the results when done.

if [ $# -ne 3 ]; then
    echo "You are missing one or more arguments"
  exit 1
elif [ $1 != "a" ] && [ $1 != "s" ] && [ $1 != "m" ] && [ $1 != "d" ]; then
    echo "Invalid operation. Use 'a' for addition,'s' for subtraction,'m' for multiplication, or 'd' for division."
      exit 1
elif [ $2 == null ]; then
    echo "Second parameter is null"
    exit 1
elif [ $3 == null ]; then
    echo "Third parameter is null"
    exit 1
fi

operation=$1
num1=$2
num2=$3

case $operation in
    "a")
        add $num1 $num2
        ;;
    "s")
     sub $num1 $num2
     ;;
    "m")
     multiplication $num1 $num2
     ;;
    "d")
     division $num1 $num2
     ;;
     *)
        echo "Invalid operation. Use 'a' for addition, 's' for subtraction, 'm' for multiplication, or 'd' for division."
        exit 1
        ;;
esac
