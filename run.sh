#!/usr/bin/env bash

export DRONE_GITHUB_CLIENT_ID=b6fec3ef5b76e31d08f0
export DRONE_GITHUB_CLIENT_SECRET=c79b6a556a5d2c3c733eae7f6dca8c7884818404
export DRONE_GITHUB_ADMIN=ravi-prakash-iiita
export DRONE_SERVER_HOST=4e51-2401-4900-1f38-14e2-10b2-e373-748a-c070.ngrok-free.app

export HOSTNAME=$(hostname)
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${DRONE_GITHUB_ADMIN},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
docker-compose up -d
