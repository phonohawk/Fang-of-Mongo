#!/bin/sh

cd `dirname "$0"`
if [ -s fof.pid ]; then
    pid=`cat fof.pid`
    echo "Stopping Fang-of-Mongo running on PID $pid..."
    kill -INT -$pid && rm -f fof.pid
else
    echo "Fang-of-Mongo is not running."
fi
