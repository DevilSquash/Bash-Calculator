#!/bin/bash
#
# Written By Sophia and John Rogers on May 2nd 2020
# Version 1.0
#
# Permission is granted for free use and distribution
#
#


# Set variables
a=""
b=""
c=""
operation=""


# Do math
sum(){
c=$(echo $a+$b | bc)
}

sub(){
c=$(echo $a-$b | bc)
}

mult(){
c=$(echo $a*$b | bc)
}

div(){
c=$(echo -e $a/$b "\n" scale=2 | bc -l)
}

sqroot(){
c=$(bc <<< "scale=10; sqrt($a)")
}

# Present Menus
mmenu(){
echo "Please select your desired operation: "
echo "--------------------------------------"
echo " Press (a) for addition "
echo " Press (s) for subtraction "
echo " Press (m) for multiplication "
echo " Press (d) for division "
echo " Press (sq) for Square Root "
echo " Press (q) to QUIT "
echo "--------------------------------------"
echo ""
read operation
decide
}

amenu(){
echo "Please enter your first number: "
read a
echo "Please enter your second number: "
read b
sum
echo "Your answer is: " $c
echo "______________________________________"
}

smenu(){
echo "Please enter your first number: "
read a
echo "Please enter your second number: "
read b
sub
echo "Your answer is: " $c
echo "______________________________________"
}

multmenu(){
echo "Please enter your first number: "
read a
echo "Please enter your second number: "
read b
mult
echo "Your answer is: " $c
echo "______________________________________"
}

dmenu(){
echo "Please enter your first number: "
read a
echo "Please enter your second number: "
read b
div
echo "Your answer is: " $c
echo "______________________________________"
}

sqrtmenu(){
echo "Find the Square Root of a number: "
read a
sqroot
echo "Your answer is: " $c
echo "______________________________________"
}


#Make decisions
decide(){
if [ $operation == 'a' ];
   then
   amenu
   mmenu
elif [ $operation == 's' ];
   then
   smenu
   mmenu
elif [ $operation == 'm' ];
   then
   multmenu
   mmenu
elif [ $operation == 'd' ];
   then
   dmenu
   mmenu
elif [ $operation == 'sq' ];
   then
   sqrtmenu
   mmenu
elif [ $operation == 'q' ];
   then
   exit 0
fi
}

# Call main Menu
mmenu
