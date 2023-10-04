set -xe 

dir=$1
artist=$(basename "$dir")

cd "$dir"
for song in *.mp3; do
    ~/.scripts/song_format_meta.sh $song $artist
done
