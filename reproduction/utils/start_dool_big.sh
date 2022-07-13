#!/bin/bash
ssh -p 61003 root@162.105.146.120 'bash -s' << 'ENDSSH'
cd /home/hsy && bash start_dool2.sh
echo -e "server_dool_begin\t$(date +%Y-%m-%d\ %H:%M:%S)"
ENDSSH
echo -e "client_dool_begin\t$(date +%Y-%m-%d\ %H:%M:%S)"
