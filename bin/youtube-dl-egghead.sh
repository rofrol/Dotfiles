#!/bin/bash

# - main thread about downloading egghead videos https://gist.github.com/ldong/b289d56090f98d02423c#gistcomment-3207051
# - add number to the file with `autonumber` https://gist.github.com/ldong/b289d56090f98d02423c#gistcomment-2275517
# - copy list of files:
#   - `copy([...new Set(Array.from(document.querySelectorAll('[href^="/lessons/"]')).map(a => a.href))].join('\n'))`
#   - https://gist.github.com/ldong/b289d56090f98d02423c#gistcomment-2877198
# - copy ahoy_visistor cookie
#   - `document.cookie.split('; ').find(row => row.startsWith('ahoy_visitor=')).split('=')[1]`
#   - https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie#example_2_get_a_sample_cookie_named_test2
# - download from playlist https://gist.github.com/ldong/b289d56090f98d02423c#gistcomment-3207051
youtube-dl -a playlist.txt --add-header=Cookie:"ahoy_visitor=$1" -cio '%(autonumber)s-%(title)s.%(ext)s' -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'