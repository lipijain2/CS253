#!/bin/bash

input1=10000001' OR '1';';
input2=anything;
echo "Press enter";
echo "1st test case:">output.txt;
bash script.sh <<< $(echo -e "$input1\n$input2\n$input3") 2>>log.err >>output.txt;
echo ''>>output.txt;

input1=10000001'; DROP TABLE USERS;';
input2=anything;
echo "Press enter";
echo "2nd test case:">>output.txt;
bash script.sh <<< $(echo -e "$input1\n$input2\n") 2>>log.err >>output.txt;
echo ''>>output.txt;

input1=10000001'; INSERT INTO Covid_Report VALUES('\''Lipi'\'',10000026,'\''@10000026@'\'','\''NO'\'');';
input2=anything;
echo "Press enter";
echo "3rd test case:">>output.txt;
bash script.sh <<< $(echo -e "$input1\n$input2\n") 2>>log.err>>output.txt;
echo ''>>output.txt;

input1=10000001
input2=anything''\'' OR '1';'; 
echo "Press enter";
echo "4th test case:">>output.txt;
bash script.sh <<< $(echo -e "$input1\n$input2\n") 2>>log.err>>output.txt;
echo ''>>output.txt;

input1=10000001'; DELETE FROM Covid_Report WHERE Test_No=10000026;';
input2=anything;
echo "Press enter";
echo "5th test case:">>output.txt;
bash script.sh <<< $(echo -e "$input1\n$input2\n") 2>>log.err>>output.txt;
echo ''>>output.txt;


rm log.err;



