#!/bin/bash
echo "Write program name P.c:";                                         #print this message in terminal
read Program_file_P;                                                    #take program P.c as input
echo "Write T.in";                                                      #print this message in terminal    
read Test_suite_T;                                                      #take T.in as input
echo "Give value of k:";                                                #print this message in terminal
read k;                                                                 #take atmost size of subset S as input
                                                                 
gcc -Wall -g -fprofile-arcs -ftest-coverage test/$Program_file_P -o P;  #compile program P.c
sed -n 1p test/$Test_suite_T | ./P > temp;                              #run program P.c on 1st testcase in T.in and redirecting output to temporary file 
gcov -b -c P > temp;                                                    #run gcov command 

n=$(wc -l ./test/$Test_suite_T | awk '{print $1}');                     #wc -l command will give number of lines in T.in i.e. number of testcase
index=$(cat $Program_file_P.gcov | grep "if" | wc -l);                  #count total number of lines with "if" in P.c.gcov file that is created after running gcov command
(( branch_count = 2 * $index ));                                        #multiply index by 2 to count total number of branches in input program

echo $k > c_prog_input;                                                 #store value of k in c_prog_input file 
echo $n >> c_prog_input;                                                #store value of n in c_prog_input file 
echo $branch_count >> c_prog_input;                                     #store value of branch_count in c_prog_input file 

rm P P.gcda P.gcno $Program_file_P.gcov;                                #remove all the files generated after running gcov command

for (( i=1; i<=$n; i++ )); do                                           #for loop to calculate coverage of each test case

gcc -Wall -g -fprofile-arcs -ftest-coverage test/$Program_file_P -o P;  #compile run and calculate branch coverage 
sed -n "$i"p test/$Test_suite_T | ./P >> temp;
gcov -b -c P > temp;

cat $Program_file_P.gcov | grep "branch" > read_file;                   #grep all lines with word "branch" in gcov file that is created after running above commands and redirect it to a file 

for (( j=1; j<=$branch_count; j++ )); do                                #for loop to calculate branch coverage for each testcase

a=$(cat read_file | sed -n "$j"p | awk '{print $4}');                   #variable a stores 4th value of 'j'th line in read_file 

if [ $a == 1 ]; then echo "1" >> c_prog_input;                          #if 'j'th branch is covered by 'i'th testcase then a is 1 and then redirect it to c_prog_input file 
else echo "0" >> c_prog_input;                                          #else will redirect '0' to c_prog_input file
fi;
done;

rm P P.gcda P.gcno $Program_file_P.gcov;                                #remove all the files generated after running gcov command to stop it from updating and creating new files for every testcase
done;

g++ reduce.c -o ./reduce && ./reduce < c_prog_input > c_prog_output;    #compile and run reduce.c program by giving our c_prog_input file as its input and redirecting its output in c_prog_out file
S_size=$(cat c_prog_output | sed -n 1p);                                #store 1st line of c_prog_output in S_size
> test/S.in;                                                            #using '>' to overwrite in S.in file so that it becomes empty
for (( j=2; j<=S_size+1; j++ )); do                                     #for loop on size of subset S
index=$(cat c_prog_output | sed -n "$j"p);                              #index varible store index of testcase taht has to be takem in S.in
cat test/$Test_suite_T | sed -n "$index"p >> test/S.in;                 #redirect testcase which is on 'index'th line in T.in to S.in

done;
rm temp read_file c_prog_input c_prog_output reduce 