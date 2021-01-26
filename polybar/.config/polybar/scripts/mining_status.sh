#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(pgrep nuxhashd)" ]; then
            pkill -f nuxhashd
        else
            nuxhashd &
        fi
        ;;
    *)
        if [ "$(pgrep nuxhashd)" ]; then
            echo "mining"
        else
            echo "not mining"
        fi
        ;;
esac