
#!/bin/bash

# DEPENDENCIES
EYED3="/usr/bin/eyeD3 -Q"
ID3=/usr/bin/id3tool
AWK=/usr/bin/awk

# ARTIST NAME
song=$1
artist=$2

# replace _ with space
artist=${artist//_/ }

printf "\n[+] Editing Meta | Artist => $artist\n"
# title=$($AWK -F "Lana Del Rey " '{print $2}' <<< "$song")
$ID3 "$song" --set-artist "$artist" --set-album ''
# maybe add the flag --title "$title"
# $EYED3 "$song" --remove-all	 --artist "$artist" --album ""

