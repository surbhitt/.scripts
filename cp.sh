#!/bin/bash
set -e
#--------- codeforces setup -----------
# create a dir with the name provided
# cd to dir
# create 6 files - 4 A B C D for problems 1 input file 1 build script
# option for entering the preferred coding language 
#   - by default c++
# each file has snippets
# input is plain text read through stdin
# build script 
#   - takes one argument the file to compile

# cpdir `xxxx_00`
# cpf `xxx`
# cpb `xxx`

# dependencies
AWK=/usr/bin/awk
SED=/usr/bin/sed

# go to codeforces dir 
cp_dir="~/Desktop/codeforces"
cur_dir=$(pwd)
cd $cp_dir 

# cnt the number of args passed
argc=$#

# giving dir_name 
if [[ $argc -eq 0 ]]; then
    dir_name="$(date +%d_%m_%y__%T)"
else
    # for string format $*
    # for array format $@
    dir_name=$*
fi

mkdir $dir_name
echo "[+] Created $dir_name"
cd $dir_name
touch "input.txt"
~/.scripts/cp-build.sh

ext="cpp" #or py
progs=('A' 'B' 'C' 'D')
for prog in ${progs[@]}; do
    file_name="$prog.$ext"
    if [[ $ext == "cpp" ]]; then
        cp "$cur_dir/cp-cpp-template" "$cp_dir/$dir_name/$file_name"
    else
        cp "$cur_dir/cp-py-template" "$cp_dir/$dir_name/$file_name"
    fi
    echo "[+] Created $file_name"
done


