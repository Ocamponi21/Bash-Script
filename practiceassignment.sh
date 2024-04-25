#! /bin/bash

factorial () {
    # You must update this return statement so that
    # it returns the computed factorial.
    while [ $counter -ge 1 ]
do  
    # Display value in counter variable and a space 
    # -n tells echo that a newline should not be appended to the 
    # end 
    echo -n $counter ' '
    # Decrement the counter variable 
    ((counter--))
done 
echo blash off!



    return 1
}

# You must update this call to the factorial function
# so that it gives the function an argument like 5, 4, 
# or 3.
factorial 5