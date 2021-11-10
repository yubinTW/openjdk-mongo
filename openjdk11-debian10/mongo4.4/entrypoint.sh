#!/bin/sh
set -e

echo "start mongodb..."

nohup /etc/mongodb/bin/mongod &> mongodb_log.txt &

echo "start app..."
sleep 3000
