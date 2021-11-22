#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ${DIR}

docker run --rm \
  -v `pwd`/vultr/output:/vultr/output \
  -e VULTR_API_ACCOUNT=${VULTR_API_ACCOUNT} \
  -e VULTR_API_KEY=${VULTR_API_KEY} \
  -e SLACK_WEBHOOK=${SLACK_WEBHOOK} \
  dylanninin/vultr-billing-alert

traffic=$(cat ./vultr/output/billing_alert | grep traffic | cut -d ':' -f2 | tr -d ' ')
charge=$(cat ./vultr/output/billing_alert | grep charge | cut -d ':' -f2 | tr -d ' ')
echo "::set-output name=vultr_traffic::${traffic}"
echo "::set-output name=vultr_charge::${charge}"
