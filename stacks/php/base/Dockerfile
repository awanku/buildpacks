FROM php:7-cli-alpine

ARG UID=1000
ARG GID=1001
ARG USER=awanku

RUN apk add --no-cache bash ca-certificates sudo
RUN addgroup -g ${GID} ${USER} && adduser -u ${UID} -G ${USER} -s /bin/bash -D ${USER}

ENV CNB_USER_ID=${UID}
ENV CNB_GROUP_ID=${GID}
