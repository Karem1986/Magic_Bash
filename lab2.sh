#!/bin/bash
# Write a script that takes exactly one argument, 
# and prints it back out to standard output. 
# Make sure the script generates 
# a usage message if it is run without giving an argument.
if [ $# -eq 0 ] ; then
      echo "Usage: $0 cero args given"
      exit 1
fi
echo $1
exit 0
