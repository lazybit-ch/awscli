FROM python:3.8.5-alpine

ARG AWSCLI_VERSION
ENV AWSCLI_VERSION=${AWSCLI_VERSION:-1.18.21}

RUN apk add --no-cache \
        groff=1.22.4-r0 \
        less=551-r0

RUN python3.7 -m pip install awscli==${AWSCLI_VERSION}

ENTRYPOINT ["aws"]
