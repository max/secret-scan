FROM python:2-alpine

LABEL version="1.0.0"
LABEL repository="http://github.com/max/secret-scan"
LABEL homepage="http://github.com/max/secret-scan"
LABEL maintainer="Max Schoening <max@max.wtf>"

LABEL "com.github.actions.name"="Secret Scan"
LABEL "com.github.actions.description"="Scan your repository for secrets"
LABEL "com.github.actions.icon"="lock"
LABEL "com.github.actions.color"="red"

RUN pip install truffleHog
RUN apk --update add git less openssh && \
  rm -rf /var/lib/apt/lists/* && \
  rm /var/cache/apk/*
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
