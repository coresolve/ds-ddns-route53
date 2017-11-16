FROM python:3-alpine
LABEL maintainer "Duffie Cooley <dcooley@coreos.com>"

RUN apk --no-cache add bash bind-tools && \
  pip install --no-cache-dir awscli==1.11.158

COPY ddns-route53 /usr/local/bin/ddns-route53

ENTRYPOINT ["/bin/bash"]
