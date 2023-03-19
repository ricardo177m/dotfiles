#!/bin/sh

set -e # stop on error

links_file="links.conf"
cwd=$(pwd -P)

check_dependencies() {
    if ! type stow > /dev/null 2>&1; then
        echo "Please install the package 'stow' to continue."
        exit 1
    fi
}

link_f() {
    src=$(echo $1 | envsubst)
    dest=$(echo $2 | envsubst)

    # for each file check if it already exists
    # backup if needed
    # mv $dest "${dest}.bak"

    stow -v -t $dest $src
}

init() {
    cat $links_file | while read line; do
        local trimmed src dest

        # trim and check if is empty or comment
        trimmed=$(echo "$line" | xargs)
        # if yes then continue
        if [ -z "$trimmed" ] || [ $(echo $trimmed | cut -c 1-1) = "#" ]; then
            continue
        fi

        src=$(echo $line | cut -d '=' -f 1)
        dest=$(echo $line | cut -d '=' -f 2)
        link_f $src $dest
    done
}

check_dependencies
init

echo 'Done!'

