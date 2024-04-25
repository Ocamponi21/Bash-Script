#! /bin/bash


factorial () {
    # Assign argument given to factorial function to 
    # variable named n. Will store computed factorial.
    n=$1

    # Assign result of subtracting one from argument
    # to loop counter variable named i.
    i=$(( $1 - 1 ))

    # Use while loop to loop as long as counter variable
    # is greater than one.
    while [ $i -gt 1 ]
    do
        # Multiply value in i by n and add result back
        # to n. This is where the factorial is being
        # computed.
        (( n *= i ))

        # Decrement i by one.
        (( i-- ))
    done

    # Return computed factorial.
    return $n
}

# Call factorial function giving it an argument of 5.
factorial 5

# Assign return value of factorial function to variable
# named ret.
ret=$?

# Display value in ret to terminal.
echo The factorial of 5 is $ret

# Call factorial function giving it an argument of 4.
factorial 4

# Assign return value of factorial function to variable
# named ret.
ret=$?

# Display value in ret to terminal.
echo The factorial of 4 is $ret

# Call factorial function giving it an argument of 3.
factorial 3

# Assign return value of factorial function to variable
# named ret.
ret=$?

# Display value in ret to terminal.
echo The factorial of 3 is $ret