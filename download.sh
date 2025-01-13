#!/bin/bash

rootFolder=$1
author=$2
args="${*:3}"

./bin/PatreonDownloader.App \
    --url https://www.patreon.com/"$author"/posts \
    --download-directory "$rootFolder"/"$author" \
    --descriptions \
    --embeds \
    --campaign-images \
    --json \
    --use-sub-directories \
    --log-level Trace \
    --file-exists-action KeepExisting \
    $args
