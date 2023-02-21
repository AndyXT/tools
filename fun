#!/bin/bash

PS3="Please select an option: "
options=("New Project" "Current Project" "Quit")

select opt in "${options[@]}"
do
  case $opt in
    "New Project")
      echo "What is the project name?"
      read -r projname
      ./projtemp "$projname"
      exit 0
      ;;
    "Current Project")
      echo "What is the project name?"
      read -r projname
      echo "Function: "
      read -r func
      echo "Source File "
      read -r src
      ./getfunc2 "$func" "$src" | ./notetemp "$src" "$projname"
      exit 0
      ;;
    "Quit")
      break
      ;;
    *) echo "Invalid option $REPLY";;
  esac
done

