gource \
    /srv/http/fabrikada \
    --user-image-dir /srv/http/fabrikada/.git/avatar \
    -s 0.6 \
    -1280x720 \
    --auto-skip-seconds .1 \
    --multi-sampling \
    --stop-at-end \
    --key \
    --highlight-users \
    --hide mouse,progress \
    --file-idle-time 0 \
    --max-files 0 \
    --title "Fabrikada Project" \
    --output-ppm-stream - \
    --output-framerate 30 \
    | ffmpeg -y -r 30 -f image2pipe -vcodec ppm -i - -b 65536K movie.mp4
