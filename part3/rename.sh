#!/bin/bash

for file_name in $(ls zalora*);
do
  # rename filenames
  mv $file_name `echo $file_name | tr 'z' 'Z'`;
  #convert to upper case
  sed -i 's/\(.*\)/\U&/'
  # remove . character 
  sed -i 's/\.//'
  
done
