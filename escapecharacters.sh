#! /bin/bash

#Escape character are contained in single-quotes

# They must be proceeded with a backslash

#\n New Line
# \t Horizontal tab
first_name=Nick 
last_name=Ocampo 
full_name="$first_name $lastname"
echo $full_name

#Set the value in a fourth string variable and 
#include the new line escape character in it 
# Double quotes aren't needed when an escape 
# character is included in the value being set 
new_line_full_name=$first_name$'\n'$last_name

#Display the fourth variable to the terminal
echo "$new_line_full_name"

#Set the value in a fith string variable and 
#include the tab line escape character in it 
tab_full_name=$first_name$'\t'$last_name

#Display the fourth variable to the terminal
echo "$tab_full_name"
