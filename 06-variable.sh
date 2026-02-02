#!/bin/bash
TIMESTAMP=$(date +%s)
echo "the excute time is $TIMESTAMP"
sleep 10
ENDTIME=$(date *%s)
TOTAL_TIME=$((ENDTIME-TIMESTAMP))
echo "excute time is$TOTAL_TIME"