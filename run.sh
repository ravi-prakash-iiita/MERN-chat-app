#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=b6fec3ef5b76e31d08f0
export DRONE_GITHUB_CLIENT_SECRET=e2b7134f9263294f0bf8ac4ab5f614c4d1d4e2af
export DRONE_GITHUB_ADMIN=ravi-prakash-iiita
export DRONE_SERVER_HOST=84a8-2401-4900-1c5d-1394-e900-b348-f55c-f7b.ngrok-free.app 

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
