#!/bin/sh

# I usually keep my todofiles in a separate dir
todofiles_dir="${HOME}/Documents/todofiles"

inotifywait -m -e close_write,moved_to --format %e/%f "${todofiles_dir}" |
    while IFS=/ read -r events file; do
        # if changed file has the proper extension - send configured signal
        if [ "${file#*.}" = "todofile" ]; then
            printf "%s updated. Sending signal\n" "$file"
            pkill -SIGRTMIN+11 i3blocks
            pkill -SIGRTMIN+12 i3blocks
        fi
    done
