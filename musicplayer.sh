#!/bin/dash

music_dir="/path/to/music/directory/"

while true; do
	select_song=$(find "$music_dir" -type f | sed "s|$music_dir||" | fzf --multi --reverse)
	[ -z "$select_song" ] && break
    song_path=$(echo "$select_song" | sed "s|^|$music_dir|" | sed "s|^|\"|" | sed "s|$|\"|")
	clear

	if [ "$1" = "a" ]; then
		echo $song_path | xargs mpv --no-video
	else
		echo $song_path | xargs mpv
	fi
done

