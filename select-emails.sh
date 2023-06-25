#!/bin/bash

awk '{print $1}' students-list_0333.txt > student-emails.txt
echo "Emails extracted successfully and saved in student-emails.txt."

