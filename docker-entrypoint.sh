#!/bin/sh
KEY_PATH=/root/.ssh
KEY_FILE=key.pem
KEY_FILEPATH=$KEY_PATH/$KEY_FILE
mkdir -p $KEY_PATH
cat /key/$INPUT_KEY_FILENAME > $KEY_FILEPATH
chmod 0600 $KEY_FILEPATH
SSH="ssh -o 'StrictHostKeyChecking no' \
         -o 'ServerAliveInterval 15' \
         -i $KEY_FILEPATH \
         -D 0.0.0.0:$LOCAL_PORT \
         -N \
         $STEP_SERVER_USER@$STEP_SERVER"
echo $SSH
eval $SSH
