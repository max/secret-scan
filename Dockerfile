FROM python:3-alpine

# hadolint ignore=DL3013,DL3018
RUN pip install --no-cache-dir truffleHog && \
    apk add --no-cache git less openssh

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
