#!/bin/bash
git add .
echo "Enter Commit Message"
read comMes
git commit -m "${comMes}"
if [ -n "$(git status - porcelain)"];
then
	echo "No Such File to Push"
else
	git branch
	echo "Enter the branch name"
	read bName
	git checkout "${bName}"
	git push origin "${bName}"
fi
echo "Successfull Pushed"
