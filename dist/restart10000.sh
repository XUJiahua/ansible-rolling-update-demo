#!/bin/bash

prog="./nginx-demo -x"

echo "Killing $prog process..."
ps -ef | grep -i "$prog" |grep -v "grep"
ps -ef |grep -i "$prog" |grep -v "grep" |awk '{print $2}'|xargs kill -s TERM
echo

while [ `ps -ef |grep -i "$prog" |grep -v "grep" | wc -l` != "0" ]
do
    echo "Waiting for 5 seconds, let push job complete"
    sleep 5
    ps -ef | grep -i "$prog" |grep -v "grep"
    echo
done

echo "Starting $prog process ..."

nohup $prog 2>&1 &
ps -ef | grep -i "$prog" |grep -v "grep"