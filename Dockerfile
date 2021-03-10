FROM python:3.9.2-alpine

ARG AWSCLI_VERSION
ENV AWSCLI_VERSION=${AWSCLI_VERSION:-1.18.21}

RUN apk add --no-cache \
        groff=1.22.4-r1 \
        less=563-r0

RUN python3.9 -m pip install --no-cache-dir awscli==${AWSCLI_VERSION}

ENTRYPOINT ["aws"]
