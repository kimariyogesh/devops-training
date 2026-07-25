#!/bin/bash

for SERVER in ser0 ser1 ser2; do
	echo "Checking server : $SERVER"
done


for FILE in /Users/yogeshkimari/Developer/devops-training/labs/learn_bash/*.sh; do
	echo "Found script: $FILE"
done

for i in {1..10}; do
	echo $i
done

COUNT=1
while [ $COUNT -le 5 ]; do
	echo $COUNT
	COUNT=$((COUNT + 1))
done
