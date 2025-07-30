#!/usr/bin/env bash

SHARE=$HOME/.local/share/rat

return_json () {
    echo '{"text": "'"$1"'", "class": "'"$2"'"}'
}

get_time () {
    endtime=$(cat $SHARE/data)
    remaining=$(($endtime-$(date +%s)))
    timer=$(date -u -d @$remaining +%T)
    timer=${timer#00:}
    timer=${timer#0}
    return_json $timer ""
}

get_program () {
    name=$(cat $SHARE/data)
    return_json $name ""
}

status=$(cat $SHARE/status)

case $status in
    0) return_json caged "" ;;
    1) get_time ;;
    2) return_json waiting waiting ;;
    3) get_program ;;
    4) return_json working "" ;;
esac
