#!/bin/bash
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

if [ "${CPU%.*}" -gt 85 ]; then
    echo "High CPU Alert: $CPU%"
else
    echo "CPU Normal: $CPU%"
fi

