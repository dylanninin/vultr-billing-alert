#!/usr/bin/env bash

docker build -f Dockerfile -t dylanninin/vultr-billing-alert:latest .
docker push dylanninin/vultr-billing-alert:latest
