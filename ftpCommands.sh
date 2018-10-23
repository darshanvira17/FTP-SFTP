#!/bin/bash
HOST=SERVER_NAME
USER=USERNAME
PASSWORD=PASSWORD
 
ftp -inv $HOST <<EOF
user $USER $PASSWORD
cd /TO/THE/DIRECTORY
get fileName
#put fileName
bye
EOF