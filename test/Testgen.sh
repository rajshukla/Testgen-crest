

file_name=$1

#removing previous results
rm resultAfter.txt
rm resultBefore.txt
rm coverage
rm level.txt
rm maxLevel.txt
rm branches_to_map

#running
../bin/crestc $file_name
python ../src/run_crest/levelGen.py

file_name=$(echo $file_name|sed 's/\(.*\)\.c/\1/')
../bin/run_crest ./$file_name $2 -$3 $4

#to save the results in a spreadsheet
python ../src/results/results.py $1 $2 $3 $4
