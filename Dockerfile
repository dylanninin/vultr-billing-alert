FROM python:3.9-alpine

RUN apk add --no-cache \
  bash \
  ca-certificates \
  curl \
  jq

COPY entrypoint.sh /entrypoint.sh
COPY vultr /vultr

RUN chmod +x ./entrypoint.sh
RUN pip install -r /vultr/requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
