FROM dylanninin/ansible

WORKDIR /vultr

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ADD vultr /vultr
RUN pip install -r /vultr/requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
