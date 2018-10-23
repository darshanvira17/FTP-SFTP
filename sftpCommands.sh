#!/bin/sh


HOST=SERVER_NAME
USER=USERNAME
PASSWD=PASSWORD

lftp<<END_SCRIPT
open sftp://$HOST
user $USER $PASSWD
get FILENAME
bye
END_SCRIPT

# Above code is to get file from root directory on the server so no cd or else cd /To/The/File and then get or put
