#! /bin/bash

# values must be encolsed in parenthesis and seperated by spaces 

# Retrival of a value relises on using the index just as it does 
# in other programming languages. the first index numner is 0

# create an array of 5 string 
grades=("A" "B" "C" "D" "F")

#Display the valued in the first and fifth elements 
echo ${grades[0]}
echo ${grades[4]}

#Display all the values in the array 
echo ${grades[@]}

#Display the length of the array 
echo "${#grades[@]}"

# Add a six element to the array 
grades[5]="F-"

#Update the value in the third element 
grades[2]="C-"

#Display all the values in the array 
echo ${grades[@]}

#Display the length of the array 
echo "${#grades[@]}"

# Loop through array 
for grade in "${grades[@]}"
do 
    # Display current element 
    echo $grade
done