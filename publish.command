#!/bin/sh

path=$(dirname "$0")
cd $path

git add -A
git status

printf '\n'
read -p "Enter a commit update: " commit

git commit -m "$commit"

printf '\n'
git status
printf '\n'

while true; do
	read -p "Push updates? [y/n] " yn
	case $yn in
			[Yy]* ) 
						 git push
						 break;;
			[Nn]* ) break;;
			* ) echo "Please answer yes or no.";;
	esac
done