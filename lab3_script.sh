#!/bin/bash
#Calista Nguyen & Will Huynh 
#02/05/19

#Problem 1 Code: 
echo "Enter a file name: "
read fileName

echo "Enter a regular expression: "
read regEx

grep $regEx $fileName

#Problem 3: Outputting the phone numbers in the file 
#Looking for numbers 0-9 in sets of 3 and 4
numbers=$(grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' $fileName)
echo "Here are the number of phone numbers: $numbers"


#Problem 4.1: Outputting the number of emails in the file 
emails=$(grep -c '^[a-zA-Z0-9._]*[@][a-zA-Z]*[.][a-zA-Z0-9]*' $fileName)
echo "Here are the number of emails: $emails"

#Problem 4.2: Outputting all the numbers starting with area code 303
numbers2=$(grep -o '^303-[0-9]*-[0-9]*' $fileName)
echo "Here are all the phone numbers starting with 303: 
$numbers2"

#Problem 4.3: Outputting all emails from @geocities.com into email_results.txt
grep -o '^[a-ZA-Z0-9._]*[@]geocities.com' $fileName >> email_results.txt
echo "Outputting all emails ending with @geocities.com into email_results.txt"










