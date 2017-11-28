#!/bin/sh
echo "> Creating Directory lv-outcome in ~/Documents"

# create directory lv-outcome
if [ -d "~/Documents/lv-outcome" ]; then
  echo "### Directory ~/Documents/lv-outcome exists"
  rm -r ~/Documents/lv-outcome
fi

mkdir ~/Documents/lv-outcome
echo "> lv-outcome created successfully"

# Move to directories
echo "> Changing directory to lv-outcome"
cd ~/Documents/lv-outcome

echo "> In Directory lv-outcome"

# Copy files by redirecting input: first make 2 files, copy content of one file to another
touch file.txt file2.txt

echo "> file.txt, file2.txt created successfully"
FILE_CONTENTS="This is text is the content of file.txt"
echo $FILE_CONTENTS > file.txt

cat file.txt > file2.txt
echo "> file2.txt contents are "
cat file2.txt

# Piping
read -p "Enter filename you want to search for " filename

ls -la ~/Documents | grep $filename

# Executing with parameters
read -p "Enter program that is in your PATH environment and is running " program
 
if pgrep -x "$program" > /dev/null
then
    echo "$program is Running"
else
    echo "$program has Stopped"
fi
