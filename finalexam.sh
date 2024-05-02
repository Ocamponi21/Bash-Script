#! /bin/bash

languages=("C" "C++" "R" "Bash" "Go" "Rust")

echo ${languages[@]}

read -p 'Please input a letter U if he would like to update a language in the list 
or add a new language (U or A): ' letter

get_total_cost () {
    n=$1
    l="${#languages[@]}"
    let l=$l-1
    b=0

    until [ $b -eq 1 ]
            do  
                if [ $n == ${languages[$l]} ]
                then 
                    b=1
                    languages[$l]=$language
                    echo $n 'has been updated to' $language
                    echo ${languages[@]}
                else 
                    (( l -- )) 
            fi
    done 
            
    return $t
}

get_addition () {
    # You must update this return statement so that
    # it returns the computed total cost.
    n=$1
    languages[6]=$addition
    echo ${languages[@]}
}


if [ $letter == 'U' ]
then 
    read -p 'Language to be updated:' update
    read -p 'New language to used to update '$update': ' language
    get_total_cost $update
elif [ $letter == 'A' ]
then
    read -p 'Language to be added: ' addition
    get_addition $addition 
elif [ $letter != 'U' ] || [ $letter != 'A' ]
then
    echo 'Input must be U or A' 
fi
