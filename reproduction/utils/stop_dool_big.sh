#!/bin/bash
ssh -p 61003 root@162.105.146.120 'bash -s' << 'ENDSSH'
cd /home/hsy && bash stop_dool2.sh
echo -e "server_dool_end\t$(date +%Y-%m-%d\ %H:%M:%S)"
cd /home/hsy && mv metricsx.csv metricsx_$(date +%Y-%m-%d-%H-%M-%S).csv
cd /home/hsy && mv metricsy.csv metricsy_$(date +%Y-%m-%d-%H-%M-%S).csv
ENDSSH
echo -e "client_dool_end\t$(date +%Y-%m-%d\ %H:%M:%S)"
