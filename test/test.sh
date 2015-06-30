PROGRAMES=*.c
for i in $PROGRAMES
do
 echo $i
./Testgen.sh $i 20 level
 rm *.cil.c
done
