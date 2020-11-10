#!/bin/bash
git add .
echo "Enter Commit Message"
read comMes
git commit -m "${comMes}"
if[ -n "$(git status - porcelain)"];
then
	echo "No Such File to Push"
else
	git branch
	echo "Enter the branch name"
	read bName
	git push origin "${bName}"
	git status
fi
echo "Successfull Pushed"
