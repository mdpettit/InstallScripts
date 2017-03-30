#!/bin/bash

/opt/mirthconnect/mcservice start

echo "sleeping until mirth connect is running"
until [ "`/opt/mirthconnect/mcservice status`"=="The daemon is running." ]; do sleep 1s; done;

tail -f /opt/mirthconnect/logs/mirth.log
