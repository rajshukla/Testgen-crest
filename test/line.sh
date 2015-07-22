#!/bin/bash

>info.js
>info.txt
total_lines=$(cat line_number.txt |wc -l)
branch_covered=$(tail -1 coverage)
echo $branch_covered > coverage


total_conditions=1
coverage=0
conditions_covered=0

for((i=1 ;i <= total_lines; i++))
do
k=$((i+1))
curr_stmt=$(sed -n ${i}p line_number.txt)
nxt_stmt=$(sed -n ${k}p line_number.txt)

tbid=$(awk -v line="$i" -v field=1 'NR==line{print $field}' branches_to_map)
fbid=$(awk -v line="$i" -v field=2 'NR==line{print $field}' branches_to_map)


   if(("curr_stmt" == "nxt_stmt")) ;then
   total_conditions=$((total_conditions+1))

      if (grep -w -q $tbid coverage) && (grep -w -q $fbid coverage); then
      conditions_covered=$((conditions_covered+2))
      echo -n  B >>info.txt
      fi

      if !(grep -w -q $tbid coverage) && !(grep -w -q $fbid coverage); then
      conditions_covered=$((conditions_covered+0))
      echo -n  N >>info.txt
      fi

      if !(grep -w -q $tbid coverage) && (grep -w -q $fbid coverage); then
      conditions_covered=$((conditions_covered+1))
      echo -n  F >>info.txt
      fi

      if (grep -w -q $tbid coverage) && !(grep -w -q $fbid coverage); then
      conditions_covered=$((conditions_covered+1))
      echo -n  T >>info.txt
      fi
      
  continue

  else
   
      if (grep -w -q $tbid coverage) && (grep -w -q $fbid coverage); then
      conditions_covered=$((conditions_covered+2))
      echo -n  B >>info.txt
      fi

      if !(grep -w -q $tbid coverage) && !(grep -w -q $fbid coverage); then
      conditions_covered=$((conditions_covered+0))
      echo -n  N >>info.txt
      fi

      if !(grep -w -q $tbid coverage) && (grep -w -q $fbid coverage); then
      conditions_covered=$((conditions_covered+1))
      echo -n  F >>info.txt
      fi

      if (grep -w -q $tbid coverage) && !(grep -w -q $fbid coverage); then
      conditions_covered=$((conditions_covered+1))
      echo -n  T >>info.txt
      fi
   

   echo $curr_stmt $total_conditions $conditions_covered $(head -1 info.txt) >>info.js
   >info.txt
   total_conditions=1
   coverage=0
   conditions_covered=0

   fi


done
