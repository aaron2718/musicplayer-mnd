# Musicplayer
A minimalist Dash script that uses fzf to have a musicplayer.

The project takes a path to a directory with audio or video files and lets you select one in fzf.
The result will be played by mpv.

Just modify the `/path/to/music/directory` and give the path of your music directory.
You need to have fzf and mpv installed.

By default mpv will play also videos when a video file is selected.
You can give the `a` option to always have only the audio played.

