#!/bin/bash

total_lines=$(cat line_number.txt |wc -l)
branch_covered=$(tail -1 coverage)
echo $branch_covered > coverage

total_conditions=1
coverage=0
conditions_covered=0

j=0
for((i=1 ;i <= total_lines; i++))
do
j=$((i-1))
k=$((i+1))

curr_stmt=$(sed -n ${i}p line_number.txt)

 if(("$j" > "0")); then
 prev_stmt=$(sed -n ${j}p line_number.txt)
 fi
nxt_stmt=$(sed -n ${k}p line_number.txt)

tbid=$(awk -v line="$i" -v field=1 'NR==line{print $field}' branches_to_map)
fbid=$(awk -v line="$i" -v field=2 'NR==line{print $field}' branches_to_map)

 if(("$i" == "1")); then
  
   if(("curr_stmt" == "nxt_stmt")) ;
   then
   if grep -w -q $tbid coverage; then
   conditions_covered=$((conditions_covered+1))
   fi

   if grep -w -q $fbid coverage; then
   conditions_covered=$((conditions_covered+1))
   fi
     continue
   else
    if grep -w -q $tbid coverage; then
    conditions_covered=$((conditions_covered+1))
    fi

    if grep -w -q $fbid coverage; then
    conditions_covered=$((conditions_covered+1))

    echo $curr_stmt $conditions_covered
    fi
   fi
 fi

 

 if(("curr_stmt" == "prev_stmt")) ;
 then
 total_conditions=$((total_conditions+1))
   if grep -w -q $tbid coverage; then
   conditions_covered=$((conditions_covered+1))
   fi

   if grep -w -q $fbid coverage; then
   conditions_covered=$((conditions_covered+1))
   fi
 continue

 else
    if(("total_conditions" > "1")); then
    echo $prev_stmt $conditions_covered 
    fi
    

    total_conditions=1
    coverage=0
    conditions_covered=0
   
    if(("curr_stmt" = "nxt_stmt")); then
    continue
    else
    
    if grep -w -q $tbid coverage; then
    conditions_covered=$((conditions_covered+1))
    fi

    if grep -w -q $fbid coverage; then
    conditions_covered=$((conditions_covered+1))
    fi
    echo ffff
    echo $curr_stmt $conditions_covered 
    fi
    
    
 fi

done

echo $curr_stmt $conditions_covered



