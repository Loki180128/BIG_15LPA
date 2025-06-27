#!/bin/bash

# user defined variables 

hero="rancho"
Villian="Virus"

echo "3idiots ka hero hai $hero"
echo "3idiots ka villian hai $Villian"

# shell/environment variables (predefined variable)


echo "current loggedin user $USER"

# user inputs
read -p "rancho ka pura naam kya tha?" fullname

echo "rancho ka pura naam $fullname tha"


# arguments  



# ./3idits.sh raju farhan rancho


echo "movie ka naam :$0"

echo "firts idiot :$1"

echo "second idiot :$3"

echo "the total number of idiots: $#"

echo "hence the 3 idiots are :$@"
