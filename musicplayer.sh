#!/bin/dash

music_dir="/path/to/music/directory"

while true; do
	select_song=$(find "$music_dir" -type f | sed "s|$music_dir/||" | fzf --reverse)
	[ -z "$select_song" ] && break
	clear

	if [ "$1" = "a" ]; then
		mpv --no-video "$music_dir/$select_song"
	else
		mpv "$music_dir/$select_song"
	fi
done

