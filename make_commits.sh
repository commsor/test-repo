#!/bin/bash
counter=0
while [ $counter -lt 30 ]
do
	random_number=$RANDOM
	commit_author="Random $random_number <test+$random_number@example.com>"
	filename="random_files/$random_number"
	touch "$filename"
	git add "$filename"
	git commit --author "$commit_author" --message "Add random commit $random_number"
	((counter++))
done

