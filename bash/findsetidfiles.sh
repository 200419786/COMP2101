#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
# it is for the lab1 exercise

# Task 1 for the exercise is to modify it to also find and display the setgid files in a second listing
# The second listing should display after the setuid file list, and be formatted similar to the setuid file list

# Task 2 for the exercise is to modify it to also display the 10 largest files in the system, sorted by their sizes
# The listing should include the file name, owner, and size in MBytes and be displayed after the listings of setuid and setgid files

echo "Setuid files:"
echo "============="
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
echo ""

echo "Setgid Files"
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 3
echo ""

#task 2
echo "Find Top Largest files"
find / -type f -printf '%s %p %k MB\n' 2>/dev/null| sort -nr | head -10
