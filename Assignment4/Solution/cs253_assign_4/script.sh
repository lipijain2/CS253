#!/bin/bash
echo "Enter Test No.";
read Number
echo $Number
echo "Enter Password";
read Password
echo $Password
mysql -u lipi -p -D Data -e "SELECT * FROM Covid_Report WHERE Test_No=$Number AND Password='$Password'";