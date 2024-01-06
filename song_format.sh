
#!/bin/bash

# use with CAUTION!!!!
# script needs to sanitize strings
# -m flag for metadata 
# ./script ~/abs_path_to_folder -m

is_formatted () {
    local song="$1"
    if [[ "$song" =~ song* ]]; then
        echo 1
    elif [[ "$song" =~ play* ]]; then
        echo 1
    elif [[ "$song" =~ tune* ]]; then
        echo 1
    fi
    echo 0
}

format () {
    local song=$1 
    echo "$song"
    # to check for double space: if [[ "$song" == *'  '* ]]; then
    new_song_title=$(echo "$song" | awk -F " - " '{ print $2 }')
    new_song_title=$(echo "$new_song_title" | sed -E 's/  /|/g' | sed -E 's/[Oo][Ff][Ff][Ii][Cc][Ii][Aa][Ll]//g' | sed -E 's/[Vv][Ii][Dd][Ee][Oo]//g' | sed -E 's/[Aa][Uu][Dd][Ii][Oo]//g' | sed -E 's/[Mm][Uu][Ss][Ii][Cc]//g' | sed -E 's/[Ss][Oo][Uu][Nn][Dd][Tt][Rr][Aa][Cc][Kk]//g' | tr -d " ")
    arg1=$dir$song 
	arg2=$dir"song_"$new_song_title
    mv "$arg1" "$arg2"   
    echo "song_$new_song_title"
}

dir=$1
artist=$(basename "$dir")
printf "\nARTIST ===> $artist\n"
cd $dir
# add relative path capabilities
# relative to ~/Music/

for song in *.mp3; do
    echo "$song"
    if [[ $(is_formatted "$song")  != 0 ]]; then
        printf "\n[!] Doesn't need formatting\n"
        echo "$song"
        continue
    fi

    printf "\n~~~~formatting song~~~~\n"
    if [[ $2 == "-m" ]]; then
        # not working
        # editing meta before renaming
        ./song_format_meta.sh "$song" "$artist"
    fi
    file_type=$(echo $(file -b "$song") | awk -F " " '{print $1}')
    if [[ $file_type != "Audio" ]]; then
        echo "Not Audio"
        continue
    fi

    format "$song"
done
