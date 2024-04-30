#! /bin/bash

# Computes and returns the total cost of all items 
# starting with the first and continuing up 
# to and including the item at the input number.
items=(
    "Partridge in a Pear Tree"
    "Turtle Dove"
    "French Hen "
    "Calling Bird" 
    "Gold Ring"
    "Geese a Laying "
    "Swans a Swimming" 
    "Maides a Milking"
    "Ladies Dancing"
    "Lords A Leaping" 
    "Piper Piping"
    "Drummer Drumming"

)
costs=( 
    15 
    27 
    15 
    14 
    9 
    25 
    5 
    7 
    18 
    14 
    27 
    26
)
get_total_cost () {
    # You must update this return statement so that
    # it returns the computed total cost.
    n=$1
    i=$(( $1 - 1 ))
    t=0
    start=1
    until [ $i -lt 0 ]
        do  
    
        #let "t = ${cost[$i]} + $t"
        let t=${costs[$i]}+t
        (( i-- ))
    done 
    return $t
}
read -p 'Please input a number (1-12):' number
if [ $number -le 12 ] && [ $number -ge 1 ]
then 
     echo 'Number'$'\t' $number
     let "a = $number - 1"
     echo 'Item'$'\t' ${items[$a]}
     echo 'Cost'$'\t' '$'${costs[$a]}
     get_total_cost $number
     ret=$?
     echo 'Total'$'\t' '$'$ret
    #  echo $ret
else    
    echo 'Number must be between 1 and 12' 
fi


# echo ${items[@]}
# echo ${costs[@]}

