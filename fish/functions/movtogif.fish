function movtogif
  ffmpeg -y -i $argv[1] \
    -vf fps=10,scale=320:-1:flags=lanczos,palettegen /tmp/palette.png
  ffmpeg -y -i $argv[1] -i /tmp/palette.png -filter_complex \
    "fps=10,scale=600:-1:flags=lanczos[x];[x][1:v]paletteuse" -f gif - | gifsicle --optimize=3 > $argv[2]
end
