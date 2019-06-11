#!/bin/bash

# create folder with name coming from commandline-input
while getopts f: option
do
case "${option}"
in
f) TOPFOLDER=${OPTARG};;
esac
done

mkdir $TOPFOLDER;

# Get an array of names of best practice folders in ansible project
# best practice folder-structure is documented here: https://docs.ansible.com/ansible/latest/user_guide/playbooks_best_practices.html
declare -a arr=("tasks" "handlers" "templates" "vars" "defaults" "meta");

# For each of those names, create a folder and a main.yml file inside that folder
for i in "${arr[@]}"
do
   mkdir "$TOPFOLDER/$i"
   touch "$TOPFOLDER/$i/main.yml"
done

mkdir "$TOPFOLDER/files";

