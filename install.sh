#!/bin/bash

# set user nobody to specified user id (non unique)
usermod -o -u "${PUID}" user
echo "[info] Env var PUID  defined as ${PUID}"

# set group users to specified group id (non unique)
groupmod -o -g "${PGID}" user
echo "[info] Env var PGID defined as ${PGID}"

chown -R ${PUID}:${PGID} /home/user
echo "[info] Starting /home/user/start/sh"
su user -c /home/user/start.sh
