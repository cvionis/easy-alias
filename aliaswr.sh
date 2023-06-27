#!/bin/bash

alias_name=$1
alias_desc=$2
alias_path="/home/$USER/.bash_aliases"

usage_str="Usage: $0 [name] [\"value\"]"

# Handle non-standard arguments
if [ -z $alias_name ] || [ $alias_name == "-h" ] || [ $alias_name == "--help" ]
then
    echo $usage_str
    exit 1
fi

echo "alias $alias_name=\"$alias_desc\"" >> $alias_path
source $alias_path


