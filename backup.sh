#!/bin/bash
screen -r mcs -X stuff '/save-all\n/save-off\n'
/usr/bin/gsutil cp -R ${BASH_SOURCE%/*}/amplified1 gs://aqua1-server-backup/$(date "+%Y%m%d-%H%M%S")-amplified1
/usr/bin/gsutil cp -R ${BASH_SOURCE%/*}/aqua1 gs://aqua1-server-backup/$(date "+%Y%m%d-%H%M%S")-aqua1
screen -r mcs -X stuff '/save-on\n'
