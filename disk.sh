#!/bin/bash

THRESHOLD=80
CURRENT=$(df / | tail -n1 | awk '{print $5}' | sed 's/%//')

if [ "$CURRENT" -gt "$THRESHOLD" ]; then
    echo "CẢNH BÁO: / đã sử dụng $CURRENT%, cao hơn ngưỡng $THRESHOLD%"
else
    echo "Ổ / OK: sử dụng $CURRENT%"
fi
