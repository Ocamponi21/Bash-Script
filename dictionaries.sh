#! /bin/bash

# A dictionary is a collection that stores its element 
# in key-value pairs

# the keys must be enclosed in square brackets 

# retrievalof a value relies on using the key just as it does in 
# other programming languages 

# declare a dictionary 
declare -A user

#Place two key-values pairs in the dictionary 
user=( ["name"]="Nick Ocampo" ["age"]=20 ["email"]="ocampon@chc.edu")

#Display the value in the name key 
echo "${user[name]}"

#Display the value in the age key 
echo "${user[age]}"

#Display the length of the dictionary 
echo "${#user[@]}"

#Loop through dictionary 
for key in "${!user[@]}"
do
    #Display current element 
    echo $key $'\t' ${user[$key]}
done