
#!/bin/bash

# use with CAUTION!!!!
# script needs to sanitize strings
# ./script ~/abs_path_to_folder

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
    # if [[ "$song" == *'  '* ]]; then
    #     new_song_title=$(echo "$song" | awk -F "  " '{ print$2 }' | tr -d " ") # | sed 's/ //g')
    # else
    new_song_title=$(echo "$song" | awk -F " - " '{ print $2 }' | tr -d " ")
    new_song_title=$(echo "$new_song_title" | sed -E 's/[Oo][Ff][Ff][Ii][Cc][Ii][Aa][Ll]//g' | sed -E 's/[Vv][Ii][Dd][Ee][Oo]//g' | sed -E 's/[Aa][Uu][Dd][Ii][Oo]//g' | sed -E 's/[Mm][Uu][Ss][Ii][Cc]//g' | sed -E 's/[Ss][Oo][Uu][Nn][Dd][Tt][Rr][Aa][Cc][Kk]//g' | sed -E 's/  /|/g' )
    arg1=$dir$song 
	arg2=$dir"song_"$new_song_title
    mv "$arg1" "$arg2"   
    echo "song_$new_song_title"
}

dir=$1
artist=$(basename "$dir")
printf "\nARTIST ===> $artist\n"

for song in *.mp3; do
    if [[ $(is_formatted "$song")  != 0 ]]; then
        printf "\n[!] Doesn't need formatting\n"
        echo "$song"
        continue
    fi

    printf "\n~~~~formatting song~~~~\n"
    # editing meta before renaming
    ./song_format_meta.sh "$song" "$artist"
    file_type=$(echo $(file -b "$song") | awk -F " " '{print $1}')
    if [[ $file_type != "Audio" ]]; then
        continue
    fi

    format "$song"
done
