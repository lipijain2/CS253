#!/bin/bash
#test no. is an eight digit integer

echo "Enter Test No.";
read Number
if [[ !($Number =~ ^[+-]?[0-9]+$) ]]; then echo "Wrong Test No."; 
PID=$(ps -f | grep "bash corrected_script.sh" | awk '{print $2}');
kill $PID;
fi;
if (( $Number > 99999999 || $Number <10000000 )); then echo "Wrong Test No."; 
PID=$(ps -f | grep "bash corrected_script.sh" | awk '{print $2}');
kill $PID;
fi;
echo "Enter Password";
read Password
len=`expr length "$Password"`
for (( i=0; i < $len; i++ ));do
if [[ "${Password:$i:1}" == \' ]]; then echo "Wrong Password"; 
PID=$(ps -f | grep "bash corrected_script.sh" | awk '{print $2}');
kill $PID;
fi;
done;
echo "Press Enter";
mysql -u lipi -p -D Data -e "SELECT * FROM Covid_Report WHERE Test_No=$Number AND Password='$Password'";


