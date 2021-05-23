#!/bin/bash
> ./test/T.in;                      #using '>' to overwrite in T.in file so that it becomes empty
echo "Write program name P.c:";     #print this message in terminal 
read  Program_file_P                #take program P.c as input
echo "Give value of n:";            #print this message in terminal            
read n;                             #take value of n as input       
for (( i=1; i<=$n; i++ )); do
(( a = $RANDOM ));                  #selecting random integer 
(( b = $RANDOM ));
echo "$a $b" >> test/T.in;          #redirecting inputs to file T.in
done;