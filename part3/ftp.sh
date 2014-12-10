#!/usr/bin/sh

#download files to directory
wget  ftp://helloFTP:world@10.11.12.13/webtrekk_marketing*  -P home/Marketing Report/Data/
#run python script
python home/Marketing Report/Scripts/ZMR.py

#run psql script
psql -h 10.11.12.13 -p 5439 -U helloDB -W world  -d zalora -f home/Marketing Report/Scripts/UpdateWebtrekk.sql
