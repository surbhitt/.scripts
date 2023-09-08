#!/bin/bash


if [[ $2 == "cpp" ]]
    cp cp-cpp-template "~/Desktop/codeforces/$name/$1"

# the touch "$1.$2" doesnt work 
# dont know why??? gives A cpp.

echo "[+] Created $1"

