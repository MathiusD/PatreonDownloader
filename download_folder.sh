#!/bin/bash

rootFolder=$1
id=$2
folder=$3
args="${*:4}"

./bin/PatreonDownloader.App \
    --url https://www.patreon.com/user/posts\?u="$id" \
    --download-directory "$rootFolder"/"$folder" \
    --descriptions \
    --embeds \
    --campaign-images \
    --json \
    --use-sub-directories \
    --log-level Trace \
    --file-exists-action KeepExisting \
    $args
