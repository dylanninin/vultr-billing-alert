#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}

export VULTR_API_ACCOUNT="${INPUT_VULTR_API_ACCOUNT}"
export VULTR_API_KEY="${INPUT_VULTR_API_KEY}"

/vultr/main.yml

path=/vultr/billing_alert

curl -X POST -H --silent --data "{\"text\": \"$(cat ${path} | sed "s/\"/'/g")\"}" "${INPUT_SLACK_WEBHOOK}"

traffic=$(cat /vultr/billing_alert | grep traffic | cut -d ':' -f2 | tr -d ' ')
charge=$(cat /vultr/billing_alert | grep charge | cut -d ':' -f2 | tr -d ' ')
echo "::set-output name=vultr_traffic::${traffic}"
echo "::set-output name=vultr_charge::${charge}"
