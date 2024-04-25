#! /bin/bash 

# Basic math operatorrs 
# Operator      operation
#-gt            >
#-lt            <
#-ge            >=
#-le            <=
#-eq            ==
#-me            !=

# This basic if decsion follows the format :
# if [ condition ]
# then 
# <commands>
# fi

#Check if the first command line argument is greater than 100, 
if [ $1 -gt 100 ]
then 
    # display a message to the terminal
    echo Hey that\'s a large number 
    # Display working directory 
    pwd
fi

# Display date to the terminal 
date 

# Nested if decision 
#Check if the first command line argument is greater than 100, 
if [ $1 -gt 100 ]
then 
    # display a message to the terminal
    echo Hey that\'s a large number 
    #Check if the first command line argument is an even number
    #Must use double parenthisis iif you want to check the results
    # of a mathematical expression
    if (( $1 % 2 == 0 )) 
    then
        #Display message 
        echo And is also an even number
    fi
fi

# The if else fecision follows the format below 
# This basic if decsion follows the format :
# if [ condition ]
# then 
# <commands>
# else 
# <command >
# fi

# Check if there are two command line arguments 
if [ $# -eq 2 ]
then 
    # Display lines of code in file along with line numbers 
    nl $2
else    
    #Display lines of cde in text.txt along with line numbers 
    nl ../Bash-Projects/text.txt
fi

# The if else if decision follows the format below 
# This basic if decsion follows the format :
# if [ condition ]
# then 
# <commands>
# elif [ condition ]
#then
# < command > 
# else 
# <command >
# fi

#Prompt the user for information and store it in
#variables 
read -p 'Enter Age: ' age 
read -p 'Did you recive an invitation (yes/no): ' invitation

# Check if the input age is greater than 21 
if [ $age -ge 21 ]
then 
    echo You are old enough  to go the party.
# == is required to be used when comparing strings not -eq
elif [ $invitation == 'yes' ]
then
    echo You have been invited to go to the party. 
else 
    echo You may not go to the party 
fi


# Basic logical operatorrs 
# Operator      operation
#&&             and
#||             or

# Check if the file provided as the second command line argument 
# is readable AND has a size grater than zero
if [ -x $2 ] && [ -s $2 ]
then
    echo This file is useful
fi

#Promot user for information and store the input information
# into a variable 
read -p 'Usernane: ' username 

# Check if username is bob OR andy
if [ $username == 'bob' ] || [ $username == 'andy' ]
then 
    #list file names in current directory along with file details 
    ls -l
else    
    #list file names only 
    ls 
fi



