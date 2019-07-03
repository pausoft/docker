#!/bin/bash
#        https://www.youtube.com/results?search_query=thunderstruck+seagulls

#quebusco=$(echo $*  | tr " " "+" )
#urlachupar=$(curl -s "https://www.youtube.com/results?search_query=$quebusco"| grep -m1 "/watch" | sed "sx.*href=\"/watchxhttps://www.youtube.com/watchx" | cut -d \" -f1)

youtube-dl -x --audio-format mp3 --audio-quality 0 $1 -o /mp3/musica.mp3
mplayer /mp3/musica.mp3
