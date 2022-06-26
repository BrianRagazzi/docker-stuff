#!/usr/bin/env sh
# -*- coding: utf-8 -*-

echo "compressing files from /source/$SOURCE_PATH to /dest$DEST_PATH"
DATE_STRING=$(date +$DATE_FORMAT)
TARFILE=/dest$DEST_PATH$FILE_PREFIX_$DATE_STRING.$TAR_EXTENTION

if [ -d /dest$DEST_PATH ] && [ -d /source ]
then
  tar -$TAR_CMD $TARFILE /source$SOURCE_PATH
else
  echo "/dest$DEST_PATH or /source folder is not mounted"
fi
