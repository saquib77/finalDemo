#!/bin/bash

	echo "Enter the Commit Message"
	read comMes
	git add .
	git commit -m "${comMes}"
if [ -n "$(git status --porcelain)" ]; then
	echo "No Such File to Push"
else
	git branch
	echo "Enter the branch name"
	read bName
	git checkout "${bName}"
	git push origin "${bName}"
	echo "Successfull Pushed"
fi
