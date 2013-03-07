#!/bin/sh
daemon=daemon
python=python2.7
addr=0.0.0.0
port=8000

cd `dirname "$0"`/fangofmongo
"$daemon" -f -p ../fof.pid "$python" ./manage.py runserver $addr:$port \
    || exit $?

pid=`cat ../fof.pid`
echo "Started Fang-of-Mongo on PID $pid."
