#! /bin/bash 

# Basic math operatorrs 
# Operator      operation
# +, -, \*,/    addition, subtraxtio, multiplicatin, division
#var++          Increase the value in var by 1  
#var--          Decrease the value in var by 1 
#%              mudlus division (return the remainder after division)

# There are several ways to predorm arithmetic 

# 1. Use let built in function, It follows the format:
# let <arithmetic expression>
# The first part of the expression is generally a 
# variable which the result is saved into
let a=5+4
echo $a

let "a = 5 + 4"
echo $a

let a++
echo $a

let "a = 4 * 5"
echo $a

let "a = $1 + 30"
echo $a

# 2.Use expr built in function
# expr is similar to to let except instead of saving the result 
# to a variable it displays to the terminal 
# expr follows the format 
# expr item1 operation item2
expr 5 + 4
expr 11 % 2
expr 5 \* $1

#Yor must have spaces between the items in the expression 
#expr 5+4

# 3. Use double parentesis following the format:
# $((expression))
a=$(( 4 + 5 ))
echo $a

a=$((3+5))
echo $a

b=$(( a + 3 ))
echo $b

(( b++ ))
echo $b

(( b+= 3 ))
echo $b

a=$(( 4 * 5 ))
echo $a

# 4 If you want to get the length of a variable ( how many characters)
# you can do the following 
# ${variable}

a='Hello World'
echo ${#a}

b=4953
echo ${#b}