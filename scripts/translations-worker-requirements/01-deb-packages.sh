#!/bin/bash

set -exv

# init helpers
helpers_dir=${MONOPACKER_HELPERS_DIR:-"/etc/monopacker/scripts"}
for h in ${helpers_dir}/*.sh; do
    . $h;
done

retry apt-get install -y parallel

# Do one final package cleanup, just in case.
apt-get autoremove -y --purge
