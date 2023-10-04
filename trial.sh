
song="what is this  www"
some () {
    echo "old==$1"
    new=$(echo "$1" | sed -E 's/  /|/g')
    echo "new==$new"
}

some "$song"
