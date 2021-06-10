#!/bin/bash
TODAY=`date +%Y%m%d`
OUTFILE="cellular_$TODAY.log"
uptime >> $OUTFILE 2>&1 
PYTHONIOENCODING=utf-8 ./huawei-hilink-status/hstatus.py >> $OUTFILE 2>&1
