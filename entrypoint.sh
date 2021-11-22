#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}

/vultr/main.yml

path=/vultr/billing_alert

curl -X POST -H --silent --data "{\"text\": \"$(cat ${path} | sed "s/\"/'/g")\"}" "${SLACK_WEBHOOK}"
