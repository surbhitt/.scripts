
##!/bin/bash

#echo "__________________new changes___________" >> trial.txt
#for song in *.mp3; do
#	newsong=$(echo "$song" | awk -F "." '{ print $1 }' | sed 's/ //g')
#	mv "$song" "song_$newsong.mp3"
#	# echo "song_$newsong.mp3" >> trial.txt
#done
#	# new_string=$(echo "$string" | tr ' ' '_') tr -d " " to remove space
#	# tr -d " " < "$string" > "output.txt" this is input redirec 
#	# awk '{ sub(" ", "_") } 1' input.txt > output.txt
#	# sub for first substitution gsub for global


is_formatted () {
    local song="$1"
    if [[ "$song" =~ song* ]]; then
        echo 1
    fi
    echo 0
}

format () {
    local song=$1 
    echo "$song"
    if [[ "$song" == *'  '* ]]; then
        new_song_title=$(echo "$song" | awk -F "  " '{ print$2 }' | tr -d " ") # | sed 's/ //g')
    else
        new_song_title=$(echo "$song" | awk -F " - " '{ print $2 }' | tr -d " ")
    fi
    new_song_title=$(echo "$new_song_title" | sed -E 's/[Oo][Ff][Ff][Ii][Cc][Ii][Aa][Ll]//g' | sed -E 's/[Vv][Ii][Dd][Ee][Oo]//g' | sed -E 's/[Aa][Uu][Dd][Ii][Oo]//g' | sed -E 's/[Mm][Uu][Ss][Ii][Cc]//g' | sed -E 's/[Ss][Oo][Uu][Nn][Dd][Tt][Rr][Aa][Cc][Kk]//g' )
	mv "$song" "song_$newsong"
    echo "song_$new_song_title"
    # echo "song_$new_song_title" >> log.txt
}


dir=$1
artist=$(basename "$dir")
printf "\nARTIST ===> $artist\n"
cd $dir

# echo "" > log.txt
for song in *.mp3; do
    if [[ $(is_formatted "$song")  != 0 ]]; then
        printf "\n[!] Doesn't need formatting\n"
        echo "$song"
        continue
    fi
    file_type=$(echo $(file -b "$song") | awk -F " " '{print $1}')
    if [[ $file_type != "Audio" ]]; then
        continue
    fi

    printf "\n~~~~formatting song~~~~\n"
    format "$song"
done
