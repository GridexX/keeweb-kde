#!/bin/bash
source .env-webdav
export GK_WEBDAV_USER=$(echo ${GK_WEBDAV_USER} | base64 -d)
curl -T ${GK_PATH}/${GK_CONFIG_FILE} ${GK_WEBDAV_CONFIG_URL} --user "${GK_WEBDAV_USER}"
